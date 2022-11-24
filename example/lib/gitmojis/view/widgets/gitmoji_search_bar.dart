import 'package:example/core/core.dart';
import 'package:flutter/material.dart';

class GitmojiSearchBar extends StatelessWidget {
  const GitmojiSearchBar({
    super.key,
    required this.onChanged,
  });

  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    final isDark = context.isDark;

    return TextFormField(
      onChanged: onChanged,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: 'Search your gitmoji...',
        suffixIcon: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          width: 40,
          margin: const EdgeInsets.only(
            top: 5,
            bottom: 5,
            right: 10,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: isDark ? Colors.white54 : Colors.black,
            ),
            borderRadius: BorderRadius.circular(2),
          ),
          child: const Center(
            child: Text(
              '⌘ K',
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
