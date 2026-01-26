import 'package:cached_network_image/cached_network_image.dart';
import 'package:core/rickmorty_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rickmorty_riverpod/core/hooks/use_l10n.hook.dart';
import 'package:rickmorty_riverpod/presentation/character/application/character.notifier.dart';
import 'package:rickmorty_riverpod/presentation/character/application/state/character.state.dart';

import 'package:rickmorty_riverpod/presentation/favorites/application/favorites.notifier.dart';
import 'package:rickmorty_riverpod/presentation/favorites/application/state/favorites.state.dart';

class CharacterDetailPage extends HookConsumerWidget {
  const CharacterDetailPage({
    super.key,
    required this.characterId,
  });

  final int characterId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = useL10n();
    final asyncState = ref.watch(characterNotifierProvider);
    final notifier = ref.watch(characterNotifierProvider.notifier);
    final favoritesAsyncState = ref.watch(favoritesNotifierProvider);
    final favoritesNotifier = ref.watch(favoritesNotifierProvider.notifier);

    useEffect(() {
      Future.microtask(() => notifier.loadCharacter(characterId));
      return null;
    }, [characterId]);

    return Scaffold(
      floatingActionButton: switch (asyncState) {
        AsyncData(value: CharacterState(:final character))
            when character != null =>
          FloatingActionButton(
            onPressed: () => favoritesNotifier.toggleFavorite(character),
            child: Icon(
              switch (favoritesAsyncState) {
                AsyncData(value: FavoritesState(:final favorites)) =>
                  favorites.any((c) => c.id == characterId)
                      ? Icons.favorite
                      : Icons.favorite_border,
                _ => Icons.favorite_border,
              },
              color: Colors.red,
            ),
          ),
        _ => null,
      },
      body: switch (asyncState) {
        AsyncData(value: CharacterState(:final character?)) => CustomScrollView(
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
                      fit: .cover,
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
                padding: const .all(Spacers.l),
                child: Column(
                  crossAxisAlignment: .stretch,
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
                        padding: const .all(Spacers.m),
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

class _StatusChip extends HookConsumerWidget {
  const _StatusChip({required this.label, required this.color});

  final String label;
  final Color color;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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

class _InfoRow extends HookConsumerWidget {
  const _InfoRow({
    required this.icon,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Spacers.s),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: 20,
            color: Colors.grey,
          ),
          HSpace.s(),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
