import 'package:example/core/core.dart';
import 'package:example/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeToogleButton extends StatelessWidget {
  const ThemeToogleButton({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = context.isDark;

    return GestureDetector(
      onTap: () => context.read<SettingsCubit>().toggleThemeMode(context),
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: isDark ? Colors.black : Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.black38.withOpacity(0.2),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Icon(
          isDark ? Icons.light_mode : Icons.mode_night,
        ),
      ),
    );
  }
}
