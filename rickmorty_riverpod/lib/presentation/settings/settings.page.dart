import 'package:core/rickmorty_theming.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rickmorty_riverpod/core/hooks/use_l10n.hook.dart';
import 'package:rickmorty_riverpod/core/hooks/use_theme.hook.dart';
import 'package:rickmorty_riverpod/presentation/settings/settings.notifier.dart';
import 'package:rickmorty_riverpod/presentation/settings/state/settings.state.dart';

class SettingsPage extends HookConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = useTheme();
    final l10n = useL10n();
    final state = ref.watch(settingsNotifierProvider);
    final notifier = ref.read(settingsNotifierProvider.notifier);

    final currentThemeMode = switch (state) {
      SettingsStateLoaded(themeMode: final mode) => mode,
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
      body: switch (state) {
        SettingsStateInitial() || SettingsStateLoading() => const Center(
          child: CircularProgressIndicator(),
        ),
        SettingsStateError(message: final msg) => Center(
          child: Text('Error: $msg'),
        ),
        SettingsStateLoaded() => ListView(
          children: [
            VSpace.m(),
            Center(
              child: RotationTransition(
                turns: animationController,
                child: Icon(
                  switch (currentThemeMode) {
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
              groupValue: currentThemeMode,
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
      },
    );
  }
}
