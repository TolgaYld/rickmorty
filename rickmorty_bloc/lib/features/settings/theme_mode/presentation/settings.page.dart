import 'package:core/rickmorty_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rickmorty_bloc/features/settings/theme_mode/application/cubit/theme_mode_cubit.dart';
import 'package:rickmorty_bloc/features/settings/theme_mode/application/cubit/theme_mode_state.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Durations.medium3,
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = L10n.of(context);

    return BlocConsumer<ThemeModeCubit, ThemeModeState>(
      listener: (context, state) {
        if (state is ThemeModeStateLoaded) {
          _animationController.forward(from: 0.0);
        }
      },
      builder: (context, state) {
        final currentThemeMode = switch (state) {
          ThemeModeStateLoaded(themeMode: final mode) => mode,
          _ => ThemeMode.system,
        };

        return Scaffold(
          appBar: AppBar(
            title: Text(l10n.settings),
          ),
          body: switch (state) {
            ThemeModeStateInitial() || ThemeModeStateLoading() => const Center(
              child: CircularProgressIndicator(),
            ),
            ThemeModeStateError(message: final msg) => Center(
              child: Text('Error: $msg'),
            ),
            ThemeModeStateLoaded() => ListView(
              children: [
                VSpace.m(),
                Center(
                  child: RotationTransition(
                    turns: _animationController,
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
                  onChanged: (val) {
                    if (val != null) {
                      context.read<ThemeModeCubit>().setTheme(val);
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
      },
    );
  }
}
