import 'package:example/core/core.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.onTap,
    required this.icon,
  });

  final void Function()? onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final isDark = context.isDark;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: isDark ? Colors.black : Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: const [
            BoxShadow(
                color: Colors.black38, blurRadius: 10, offset: Offset(0, 4)),
          ],
        ),
        child: Icon(icon),
      ),
    );
  }
}
