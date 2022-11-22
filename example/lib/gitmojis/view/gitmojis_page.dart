import 'dart:math';

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

  Color getNewColor() => Gitmoji.all.map((e) => e.color).toList()[Random().nextInt(Gitmoji.all.length)];

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    color = getNewColor();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              labelText: 'Search your gitmoji...',
                              suffixIcon: Container(
                                width: 40,
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  border: Border.all(color: color),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: const Center(
                                  child: Text('⌘ K', textAlign: TextAlign.center),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Button(
                          icon: Icons.abc,
                          onTap: () => context.read<SettingsCubit>().toggleThemeMode(context),
                        ),
                      ],
                    ),
                    Wrap(
                      runSpacing: 25,
                      spacing: 25,
                      children: List.generate(
                        Gitmoji.all.length,
                        (i) => GitmojiWidget(Gitmoji.all[i]),
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
