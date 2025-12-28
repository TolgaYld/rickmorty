import 'package:cached_network_image/cached_network_image.dart';
import 'package:core/rickmorty_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:rickmorty_riverpod/core/hooks/use_l10n.hook.dart';
import 'package:rickmorty_riverpod/core/hooks/use_theme.hook.dart';

class CharacterCard extends HookWidget {
  const CharacterCard({
    super.key,
    required this.character,
    required this.isFavorite,
    required this.onToggleFavorite,
  });

  final Character character;
  final bool isFavorite;
  final VoidCallback onToggleFavorite;

  @override
  Widget build(BuildContext context) {
    final theme = useTheme();
    final colorScheme = useColorScheme();
    final l10n = useL10n();

    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () => context.goNamed(
          'character_detail',
          pathParameters: {'id': character.id.toString()},
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AspectRatio(
                  aspectRatio: 1.0,
                  child: CachedNetworkImage(
                    imageUrl: character.image,
                    fit: BoxFit.cover,
                    errorWidget: (context, error, stackTrace) => Container(
                      color: colorScheme.surfaceContainerHighest,
                      child: Icon(
                        Icons.broken_image,
                        color: colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 9,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          character.name,
                          style: theme.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                color: character.vitality.color,
                                shape: BoxShape.circle,
                              ),
                            ),
                            HSpace.xxs(),
                            Text(
                              character.vitality.getLocalizedName(l10n),
                              style: theme.textTheme.bodyMedium,
                            ),
                            const Spacer(),
                            Icon(
                              switch (character.species) {
                                Species.human => Icons.person_outline,
                                Species.alien => Icons.pets,
                                _ => Icons.help_outline,
                              },
                              size: 16,
                              color: theme.textTheme.bodyMedium?.color
                                  ?.withValues(alpha: 0.7),
                            ),
                            HSpace.xxs(),
                            Icon(
                              switch (character.gender) {
                                Gender.male => Icons.male,
                                Gender.female => Icons.female,
                                Gender.genderless =>
                                  Icons.remove_circle_outline,
                                Gender.unknown => Icons.question_mark,
                              },
                              size: 16,
                              color: theme.textTheme.bodyMedium?.color
                                  ?.withValues(alpha: 0.7),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 8,
              right: 8,
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: onToggleFavorite,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.all(Spacers.s),
                    decoration: BoxDecoration(
                      color: Colors.black.withValues(alpha: 0.4),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: isFavorite ? Colors.red : Colors.white,
                      size: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
