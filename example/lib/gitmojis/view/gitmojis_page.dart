import 'dart:math';

import 'package:example/core/core.dart';
import 'package:example/gitmojis/gitmojis.dart';
import 'package:example/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gitmoji/gitmoji.dart';

class GitmojiPage extends StatefulWidget {
  const GitmojiPage({super.key});

  @override
  State<GitmojiPage> createState() => _GitmojiPageState();
}

class _GitmojiPageState extends State<GitmojiPage> {
  late final ScrollController scrollController;
  late Color color;
  late List<Gitmoji> gitmojis;

  Color getNewColor() => Gitmoji.all.map((e) => e.color).toList()[Random().nextInt(Gitmoji.all.length)];

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    color = getNewColor();
    gitmojis = Gitmoji.all;
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = context.isDark;

    return Scaffold(
      body: RawScrollbar(
        controller: scrollController,
        thumbColor: color,
        radius: const Radius.circular(20),
        child: Center(
          child: SingleChildScrollView(
            controller: scrollController,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 40,
                            child: TextFormField(
                              onChanged: (query) => setState(() => gitmojis = Gitmoji.search(query)),
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
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Button(
                          icon: isDark ? Icons.light_mode : Icons.mode_night,
                          onTap: () => context.read<SettingsCubit>().toggleThemeMode(context),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Wrap(
                      runSpacing: 25,
                      spacing: 25,
                      children: List.generate(
                        gitmojis.length,
                        (i) => GitmojiWidget(gitmojis[i]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
