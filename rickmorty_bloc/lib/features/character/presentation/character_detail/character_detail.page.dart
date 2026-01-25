import 'package:cached_network_image/cached_network_image.dart';
import 'package:core/rickmorty_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rickmorty_bloc/features/character/application/bloc/character_bloc.dart';
import 'package:rickmorty_bloc/features/character/application/bloc/character_state.dart';
import 'package:rickmorty_bloc/features/favorites/application/bloc/favorites_bloc.dart';
import 'package:rickmorty_bloc/features/favorites/application/bloc/favorites_state.dart';

class CharacterDetailPage extends StatefulWidget {
  const CharacterDetailPage({
    super.key,
    required this.characterId,
  });

  final int characterId;

  @override
  State<CharacterDetailPage> createState() => _CharacterDetailPageState();
}

class _CharacterDetailPageState extends State<CharacterDetailPage> {
  @override
  void initState() {
    super.initState();
    context.read<CharacterBloc>().add(
      CharacterEventLoadDetail(id: widget.characterId),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);

    return BlocBuilder<CharacterBloc, CharacterState>(
      builder: (context, state) {
        final character = switch (state) {
          CharacterStateLoaded(character: final c) => c,
          _ => null,
        };

        return Scaffold(
          floatingActionButton: character != null
              ? FloatingActionButton(
                  onPressed: () {
                    context.read<FavoritesBloc>().add(
                      FavoritesEventToggle(character: character),
                    );
                  },
                  child: BlocBuilder<FavoritesBloc, FavoritesState>(
                    builder: (context, favoritesState) {
                      final isFavorite = switch (favoritesState) {
                        FavoritesStateLoaded(favorites: final favorites) =>
                          favorites.any((c) => c.id == widget.characterId),
                        _ => false,
                      };
                      return Icon(
                        isFavorite ? Icons.favorite : Icons.favorite_border,
                        color: Colors.red,
                      );
                    },
                  ),
                )
              : null,
          body: switch (state) {
            CharacterStateLoading() => const Center(
              child: CircularProgressIndicator(),
            ),
            CharacterStateError(message: final msg) => Center(
              child: Text('Error: $msg'),
            ),
            CharacterStateLoaded(character: final character) =>
              character == null
                  ? const Center(child: CircularProgressIndicator())
                  : CustomScrollView(
                      slivers: [
                        SliverAppBar(
                          expandedHeight: 400,
                          pinned: true,
                          stretch: true,
                          flexibleSpace: FlexibleSpaceBar(
                            title: Text(
                              character.name,
                              style: const TextStyle(
                                shadows: [
                                  Shadow(
                                    color: Colors.black,
                                    blurRadius: 10,
                                  ),
                                ],
                              ),
                            ),
                            background: Stack(
                              fit: StackFit.expand,
                              children: [
                                CachedNetworkImage(
                                  imageUrl: character.image,
                                  fit: BoxFit.cover,
                                ),
                                const DecoratedBox(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Colors.transparent,
                                        Colors.black54,
                                      ],
                                      stops: [0.6, 1.0],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SliverToBoxAdapter(
                          child: Padding(
                            padding: const EdgeInsets.all(Spacers.l),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Row(
                                  children: [
                                    _StatusChip(
                                      label: character.vitality.name,
                                      color: switch (character.vitality) {
                                        Vitality.alive => Colors.green,
                                        Vitality.dead => Colors.red,
                                        Vitality.unknown => Colors.grey,
                                      },
                                    ),
                                    const HSpace.m(),
                                    _StatusChip(
                                      label: character.species.name,
                                      color: Colors.blueGrey,
                                    ),
                                    if (character.type.isNotEmpty) ...[
                                      const HSpace.m(),
                                      _StatusChip(
                                        label: character.type,
                                        color: Colors.orange,
                                      ),
                                    ],
                                  ],
                                ),
                                const VSpace.l(),
                                Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(Spacers.m),
                                    child: Column(
                                      children: [
                                        _InfoRow(
                                          icon: Icons.person_outline,
                                          label: l10n.gender,
                                          value: character.gender.name,
                                        ),
                                        const Divider(),
                                        _InfoRow(
                                          icon: Icons.location_on_outlined,
                                          label: l10n.origin,
                                          value: character.origin.name,
                                        ),
                                        const Divider(),
                                        _InfoRow(
                                          icon: Icons.map_outlined,
                                          label: l10n.location,
                                          value: character.location.name,
                                        ),
                                        const Divider(),
                                        _InfoRow(
                                          icon: Icons.tv,
                                          label: l10n.episode,
                                          value: l10n.episodesValue(
                                            character.episode.length,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
            _ => const SizedBox.shrink(),
          },
        );
      },
    );
  }
}

class _StatusChip extends StatelessWidget {
  const _StatusChip({required this.label, required this.color});

  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const .symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.2),
        borderRadius: .circular(20),
        border: .all(color: color.withValues(alpha: 0.5)),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: color,
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  const _InfoRow({
    required this.icon,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .symmetric(vertical: Spacers.s),
      child: Row(
        crossAxisAlignment: .start,
        children: [
          Icon(
            icon,
            size: 20,
            color: Colors.grey,
          ),
          HSpace.s(),
          Expanded(
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
                const VSpace.xs(),
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
