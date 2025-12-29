import 'package:core/rickmorty_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rickmorty_bloc/core/presentation/widgets/character_card.dart';
import 'package:rickmorty_bloc/features/favorites/application/bloc/favorites_bloc.dart';

import 'package:rickmorty_bloc/features/favorites/application/bloc/favorites_state.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  final List<Character> _displayedItems = [];
  bool _initialized = false;

  @override
  void initState() {
    super.initState();
    final state = context.read<FavoritesBloc>().state;
    if (state is FavoritesStateLoaded) {
      _displayedItems.addAll(state.favorites);
      _initialized = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);

    return BlocConsumer<FavoritesBloc, FavoritesState>(
      listener: (context, state) {
        if (state is FavoritesStateLoaded) {
          if (_initialized == false) {
            setState(() {
              _displayedItems.clear();
              _displayedItems.addAll(state.favorites);
              _initialized = true;
            });
          } else {
            final currentDisplayIds = _displayedItems.map((e) => e.id).toSet();
            final newItems = state.favorites.where(
              (e) => currentDisplayIds.contains(e.id) == false,
            );

            if (newItems.isNotEmpty) {
              setState(() {
                _displayedItems.addAll(newItems);
              });
            }
          }
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(l10n.favorites),
          ),
          body: switch (state) {
            FavoritesStateInitial() || FavoritesStateLoading() => const Center(
              child: CircularProgressIndicator(),
            ),
            FavoritesStateError(message: final msg) => Center(
              child: Text('Error: $msg'),
            ),
            FavoritesStateLoaded(favorites: final favorites) =>
              _displayedItems.isEmpty && favorites.isEmpty
                  ? Center(child: Text(l10n.noFavorites))
                  : GridView.builder(
                      padding: const EdgeInsets.all(Spacers.m),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.7,
                            mainAxisSpacing: Spacers.m,
                            crossAxisSpacing: Spacers.m,
                          ),
                      itemCount: _displayedItems.length,
                      itemBuilder: (context, index) {
                        final item = _displayedItems[index];
                        final isStillFavorite = favorites.any(
                          (f) => f.id == item.id,
                        );

                        return _AnimatedFavoriteItem(
                          key: ValueKey(item.id),
                          character: item,
                          shouldAnimateOut: isStillFavorite == false,
                          onRemoveComplete: () {
                            setState(() {
                              _displayedItems.removeWhere(
                                (c) => c.id == item.id,
                              );
                            });
                          },
                          onToggle: () {
                            context.read<FavoritesBloc>().add(
                              FavoritesEventToggle(character: item),
                            );
                          },
                        );
                      },
                    ),
          },
        );
      },
    );
  }
}

class _AnimatedFavoriteItem extends StatefulWidget {
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
  State<_AnimatedFavoriteItem> createState() => _AnimatedFavoriteItemState();
}

class _AnimatedFavoriteItemState extends State<_AnimatedFavoriteItem>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Durations.short3,
      value: 1.0,
    );
  }

  @override
  void didUpdateWidget(covariant _AnimatedFavoriteItem oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.shouldAnimateOut && oldWidget.shouldAnimateOut == false) {
      _controller.reverse().then((_) => widget.onRemoveComplete());
    } else if (widget.shouldAnimateOut == false && oldWidget.shouldAnimateOut) {
      if (_controller.status != AnimationStatus.completed) {
        _controller.forward();
      }
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
      child: FadeTransition(
        opacity: _controller,
        child: CharacterCard(
          character: widget.character,
          isFavorite: true, // Always true here visually until removed
          onToggleFavorite: widget.onToggle,
        ),
      ),
    );
  }
}
