import 'package:core/rickmorty_theming.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rickmorty_riverpod/core/hooks/use_l10n.hook.dart';
import 'package:rickmorty_riverpod/core/hooks/use_theme.hook.dart';
import 'package:rickmorty_riverpod/presentation/settings/theme_mode/application/state/theme_mode.state.dart';
import 'package:rickmorty_riverpod/presentation/settings/theme_mode/application/theme_mode.notifier.dart';

class SettingsPage extends HookConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = useTheme();
    final l10n = useL10n();
    final asyncState = ref.watch(themeModeNotifierProvider);
    final notifier = ref.read(themeModeNotifierProvider.notifier);

    final currentThemeMode = switch (asyncState) {
      AsyncData(:final value) => value.themeMode,
      _ => ThemeMode.system,
    };

    final animationController = useAnimationController(
      duration: Durations.medium3,
    );

    useEffect(() {
      animationController.forward(from: 0.0);
      return null;
    }, [currentThemeMode]);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.settings),
      ),
      body: switch (asyncState) {
        AsyncData(value: ThemeModeState(:final themeMode)) => ListView(
          children: [
            VSpace.m(),
            Center(
              child: RotationTransition(
                turns: animationController,
                child: Icon(
                  switch (themeMode) {
                    ThemeMode.light => Icons.wb_sunny,
                    ThemeMode.dark => Icons.nightlight_round,
                    ThemeMode.system => Icons.brightness_auto,
                  },
                  size: 80,
                  color: theme.primaryColor,
                ),
              ),
            ),
            VSpace.m(),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Theme Mode',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            RadioGroup<ThemeMode>(
              groupValue: themeMode,
              onChanged: (val) async {
                if (val != null) {
                  await notifier.setTheme(val);
                }
              },
              child: Column(
                children: [
                  RadioListTile<ThemeMode>(
                    title: Text(l10n.themeModeSystem),
                    value: ThemeMode.system,
                  ),
                  RadioListTile<ThemeMode>(
                    title: Text(l10n.themeModeLight),
                    value: ThemeMode.light,
                  ),
                  RadioListTile<ThemeMode>(
                    title: Text(l10n.themeModeDark),
                    value: ThemeMode.dark,
                  ),
                ],
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
