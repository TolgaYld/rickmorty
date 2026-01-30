import 'package:core/rickmorty_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rickmorty_riverpod/presentation/character/application/character.notifier.dart';
import 'package:rickmorty_riverpod/presentation/character/application/state/character.state.dart';

import 'package:rickmorty_riverpod/presentation/shared/molecules/character_card.dart';
import 'package:rickmorty_riverpod/presentation/favorites/application/state/favorites.state.dart';
import 'package:rickmorty_riverpod/presentation/favorites/application/favorites.notifier.dart';

class CharacterPage extends HookConsumerWidget {
  const CharacterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final charactersStateAsync = ref.watch(characterNotifierProvider);
    final characterNotifier = ref.watch(characterNotifierProvider.notifier);
    final favoritesAsyncState = ref.watch(favoritesNotifierProvider);
    final favoritesNotifier = ref.watch(favoritesNotifierProvider.notifier);

    useAutomaticKeepAlive(wantKeepAlive: true);
    final scrollController = useScrollController();

    useEffect(() {
      void onScroll() {
        if (scrollController.position.pixels >=
            scrollController.position.maxScrollExtent - 200) {
          characterNotifier.loadMoreCharacters();
        }
      }

      scrollController.addListener(onScroll);
      return () => scrollController.removeListener(onScroll);
    }, [scrollController]);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Characters'),
        centerTitle: false,
      ),
      body: switch (charactersStateAsync) {
        AsyncData(
          value: CharacterState(:final characters, :final isFetchingMore),
        ) =>
          GridView.builder(
            key: const PageStorageKey('characters_grid'),
            controller: scrollController,
            padding: const EdgeInsets.all(Spacers.m),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.7,
              mainAxisSpacing: Spacers.m,
              crossAxisSpacing: Spacers.m,
            ),
            itemCount: characters.length + (isFetchingMore ? 1 : 0),
            itemBuilder: (context, index) {
              if (index == characters.length) {
                return const Center(child: CircularProgressIndicator());
              }

              final item = characters[index];
              return CharacterCard(
                character: item,
                isFavorite: switch (favoritesAsyncState) {
                  AsyncData(value: FavoritesState(:final favorites)) =>
                    favorites.contains(item),
                  _ => false,
                },
                onToggleFavorite: () async =>
                    await favoritesNotifier.toggleFavorite(item),
              );
            },
          ),
        AsyncError(:final error) => Center(
          child: Text('Error: $error'),
        ),
        AsyncLoading() => const Center(
          child: CircularProgressIndicator(),
        ),
      },
    );
  }
}
