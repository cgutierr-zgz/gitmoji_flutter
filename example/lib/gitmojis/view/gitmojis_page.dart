import 'dart:math';
import 'dart:ui';

import 'package:example/core/core.dart';
import 'package:example/gitmojis/gitmojis.dart';
import 'package:flutter/material.dart';
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
  late bool isTapUpVisible;

  Color getNewColor() => Gitmoji.all
      .map((e) => e.color)
      .toList()[Random().nextInt(Gitmoji.all.length)];

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    color = getNewColor();
    gitmojis = Gitmoji.all;
    isTapUpVisible = false;

    scrollController.addListener(() {
      if (scrollController.offset.toInt() % 100 == 0) {
        setState(() => color = getNewColor());
      }
      if (scrollController.offset > 300 && !isTapUpVisible) {
        setState(() => isTapUpVisible = true);
      } else if (scrollController.offset < 300 && isTapUpVisible) {
        setState(() => isTapUpVisible = false);
      }
    });
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
      body: Stack(
        children: [
          RawScrollbar(
            controller: scrollController,
            thumbColor: color,
            radius: const Radius.circular(20),
            child: SingleChildScrollView(
              controller: scrollController,
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Image.asset(
                        isDark
                            ? '../assets/gitmoji_dark.gif'
                            : '../assets/gitmoji.gif',
                        height: 100,
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 40,
                              child: GitmojiSearchBar(
                                onChanged: (query) => setState(
                                  () => gitmojis = Gitmoji.search(query),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          const ThemeToogleButton(),
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
          AnimatedOpacity(
            opacity: isTapUpVisible ? 1 : 0,
            duration: const Duration(milliseconds: 300),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    //color: Colors.grey.shade200.withOpacity(0.5),
                    shape: BoxShape.circle,
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: IconButton(
                        icon: const Icon(Icons.arrow_upward),
                        onPressed: () => scrollController.animateTo(
                          0,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
