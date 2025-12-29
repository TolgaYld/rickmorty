import 'package:core/rickmorty_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rickmorty_bloc/core/presentation/widgets/character_card.dart';
import 'package:rickmorty_bloc/features/character/application/bloc/character_bloc.dart';
import 'package:rickmorty_bloc/features/character/application/bloc/character_state.dart';
import 'package:rickmorty_bloc/features/favorites/application/bloc/favorites_bloc.dart';
import 'package:rickmorty_bloc/features/favorites/application/bloc/favorites_state.dart';

class CharacterPage extends StatefulWidget {
  const CharacterPage({super.key});

  @override
  State<CharacterPage> createState() => _CharacterPageState();
}

class _CharacterPageState extends State<CharacterPage>
    with AutomaticKeepAliveClientMixin {
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
      context.read<CharacterBloc>().add(CharacterEventLoadMore());
    }
  }

  bool get _isBottom {
    if (_scrollController.hasClients == false) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Characters'),
        centerTitle: false,
      ),
      body: BlocBuilder<CharacterBloc, CharacterState>(
        builder: (context, state) {
          return switch (state) {
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
                controller: _scrollController,
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
                  return BlocBuilder<FavoritesBloc, FavoritesState>(
                    builder: (context, favoritesState) {
                      final isFavorite = switch (favoritesState) {
                        FavoritesStateLoaded(favorites: final favorites) =>
                          favorites.any((e) => e.id == item.id),
                        _ => false,
                      };

                      return CharacterCard(
                        character: item,
                        isFavorite: isFavorite,
                        onToggleFavorite: () {
                          context.read<FavoritesBloc>().add(
                            FavoritesEventToggle(character: item),
                          );
                        },
                      );
                    },
                  );
                },
              ),
          };
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
