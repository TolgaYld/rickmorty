import 'package:core/rickmorty_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rickmorty_riverpod/core/hooks/use_l10n.hook.dart';
import 'package:rickmorty_riverpod/presentation/shared/molecules/character_card.dart';
import 'package:rickmorty_riverpod/presentation/favorites/application/favorites.notifier.dart';
import 'package:rickmorty_riverpod/presentation/favorites/application/state/favorites.state.dart';

class FavoritesPage extends HookConsumerWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = useL10n();
    final asyncState = ref.watch(favoritesNotifierProvider);
    final notifier = ref.read(favoritesNotifierProvider.notifier);

    final displayedItems = useState<List<Character>>([]);
    final initialized = useState<bool>(false);

    useEffect(() {
      if (asyncState.value case FavoritesState(
        favorites: final currentFavorites,
      )) {
        if (initialized.value == false) {
          displayedItems.value = currentFavorites;
          initialized.value = true;
        } else {
          final currentDisplayIds = displayedItems.value
              .map((e) => e.id)
              .toSet();
          final newItems = currentFavorites.where(
            (e) => currentDisplayIds.contains(e.id) == false,
          );

          if (newItems.isNotEmpty) {
            displayedItems.value = [...displayedItems.value, ...newItems];
          }
        }
      }
      return null;
    }, [asyncState]);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.favorites),
      ),
      body: switch (asyncState) {
        AsyncData(:final value) =>
          displayedItems.value.isEmpty && value.favorites.isEmpty
              ? Center(child: Text(l10n.noFavorites))
              : GridView.builder(
                  padding: const EdgeInsets.all(Spacers.m),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.7,
                    mainAxisSpacing: Spacers.m,
                    crossAxisSpacing: Spacers.m,
                  ),
                  itemCount: displayedItems.value.length,
                  itemBuilder: (context, index) {
                    final item = displayedItems.value[index];
                    final isStillFavorite = value.favorites.any(
                      (f) => f.id == item.id,
                    );

                    return _AnimatedFavoriteItem(
                      key: ValueKey(item.id),
                      character: item,
                      shouldAnimateOut: isStillFavorite == false,
                      onRemoveComplete: () {
                        displayedItems.value = displayedItems.value
                            .where((c) => c.id != item.id)
                            .toList();
                      },
                      onToggle: () async => await notifier.toggleFavorite(item),
                    );
                  },
                ),
        AsyncError(:final error) => Center(
          child: Text('Error: $error'),
        ),
        _ => const Center(
          child: CircularProgressIndicator(),
        ),
      },
    );
  }
}

class _AnimatedFavoriteItem extends HookWidget {
  const _AnimatedFavoriteItem({
    super.key,
    required this.character,
    required this.shouldAnimateOut,
    required this.onRemoveComplete,
    required this.onToggle,
  });

  final Character character;
  final bool shouldAnimateOut;
  final VoidCallback onRemoveComplete;
  final VoidCallback onToggle;

  @override
  Widget build(BuildContext context) {
    final controller = useAnimationController(
      duration: Durations.short3,
      initialValue: 1.0,
    );

    useEffect(() {
      if (shouldAnimateOut) {
        controller.reverse().then((_) => onRemoveComplete());
      } else {
        if (controller.status != AnimationStatus.completed) {
          controller.forward();
        }
      }
      return null;
    }, [shouldAnimateOut]);

    return ScaleTransition(
      scale: CurvedAnimation(parent: controller, curve: Curves.easeInOut),
      child: FadeTransition(
        opacity: controller,
        child: CharacterCard(
          character: character,
          isFavorite: true,
          onToggleFavorite: onToggle,
        ),
      ),
    );
  }
}
