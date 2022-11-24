import 'package:example/core/core.dart';
import 'package:example/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class SettingsCubit extends HydratedCubit<Settings> {
  SettingsCubit() : super(const Settings(themeMode: ThemeMode.system));

  void toggleThemeMode(BuildContext context) {
    final isDark = context.isDark;

    emit(Settings(themeMode: isDark ? ThemeMode.light : ThemeMode.dark));
  }

  @override
  Settings fromJson(Map<String, dynamic> json) => Settings.fromJson(json);

  @override
  Map<String, dynamic> toJson(Settings state) => state.toJson();
}
