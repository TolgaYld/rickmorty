import 'package:core/rickmorty_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rickmorty_riverpod/presentation/character/character.notifier.dart';
import 'package:rickmorty_riverpod/presentation/character/state/character.state.dart';
import 'package:rickmorty_riverpod/presentation/shared/molecules/character_card.dart';
import 'package:rickmorty_riverpod/presentation/favorites/state/favorites.state.dart';
import 'package:rickmorty_riverpod/presentation/favorites/favorites.notifier.dart';

class CharacterPage extends HookConsumerWidget {
  const CharacterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final charactersState = ref.watch(characterNotifierProvider);
    final characterNotifier = ref.read(characterNotifierProvider.notifier);
    final favoritesState = ref.watch(favoritesNotifierProvider);
    final favoritesNotifier = ref.read(favoritesNotifierProvider.notifier);

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
      body: switch (charactersState) {
        CharacterStateInitial() || CharacterStateLoading() => const Center(
          child: CircularProgressIndicator(),
        ),
        CharacterStateError(message: final msg) => Center(
          child: Text('Error: $msg'),
        ),
        CharacterStateLoaded(
          characters: final characters,
          isFetchingMore: final isFetchingMore,
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
                isFavorite: switch (favoritesState) {
                  FavoritesStateInitial() || FavoritesStateLoading() => false,
                  FavoritesStateError() => false,
                  FavoritesStateLoaded(favorites: final favorites) =>
                    favorites.contains(item),
                },
                onToggleFavorite: () async =>
                    await favoritesNotifier.toggleFavorite(item),
              );
            },
          ),
      },
    );
  }
}
