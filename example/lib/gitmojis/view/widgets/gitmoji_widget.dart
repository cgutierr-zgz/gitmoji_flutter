import 'package:example/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gitmoji/gitmoji.dart';

class GitmojiWidget extends StatefulWidget {
  const GitmojiWidget(this.gitmoji, {super.key});

  final Gitmoji gitmoji;

  @override
  State<GitmojiWidget> createState() => _GitmojiWidgetState();
}

class _GitmojiWidgetState extends State<GitmojiWidget> {
  late bool onHover;

  @override
  void initState() {
    super.initState();
    onHover = false;
  }

  @override
  Widget build(BuildContext context) {
    final isDark = context.isDark;

    return MouseRegion(
      onEnter: (_) => setState(() => onHover = true),
      onExit: (_) => setState(() => onHover = false),
      child: Card(
        elevation: onHover ? 10 : 1,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          width: 150,
          height: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: isDark
                ? onHover
                    ? Colors.grey.shade800
                    : Colors.grey.shade900
                : Colors.white,
          ),
          clipBehavior: Clip.hardEdge,
          child: Column(
            children: [
              Expanded(
                child: _GitmojiSelector(widget.gitmoji),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _GitmojiTextSelector(widget.gitmoji),
                      const SizedBox(height: 10),
                      Expanded(
                        child: Text(
                          widget.gitmoji.description,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _GitmojiSelector extends StatefulWidget {
  const _GitmojiSelector(this.gitmoji);

  final Gitmoji gitmoji;

  @override
  State<_GitmojiSelector> createState() => _GitmojiSelectorState();
}

class _GitmojiSelectorState extends State<_GitmojiSelector>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    );

    animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.easeInOut,
      ),
    );

    controller.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void onEnter() => controller.forward();

  void onExit() => controller.reverse();

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: widget.gitmoji.color,
      width: double.maxFinite,
      child: MouseRegion(
        onEnter: (_) => onEnter(),
        onExit: (_) => onExit(),
        child: GestureDetector(
          onTap: () {
            Clipboard.setData(ClipboardData(text: widget.gitmoji.code)).then(
              (_) => context.showSnackBar(
                '${widget.gitmoji.emoji} Coppied to clipboard',
              ),
            );
            controller.forward().then(
                  (value) => controller.reverse(from: controller.value),
                );
          },
          onTapDown: (_) => onEnter(),
          onTapCancel: () => controller.reverse(from: controller.value),
          onTapUp: (_) => onExit(),
          child: Transform.translate(
            offset: Offset(0, 10 * animation.value),
            child: Text(
              widget.gitmoji.emoji,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 50),
            ),
          ),
        ),
      ),
    );
  }
}

class _GitmojiTextSelector extends StatefulWidget {
  const _GitmojiTextSelector(this.gitmoji);

  final Gitmoji gitmoji;

  @override
  State<_GitmojiTextSelector> createState() => _GitmojiTextSelectorState();
}

class _GitmojiTextSelectorState extends State<_GitmojiTextSelector>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );

    animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.easeInOut,
      ),
    );

    controller.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void onEnter() => controller.forward();

  void onExit() => controller.reverse();

  @override
  Widget build(BuildContext context) {
    final text = Text(
      widget.gitmoji.code,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.bold,
      ),
    );

    final size = (TextPainter(
      text: TextSpan(text: widget.gitmoji.code, style: text.style),
      maxLines: 1,
      textScaleFactor: MediaQuery.of(context).textScaleFactor,
      textDirection: TextDirection.ltr,
    )..layout())
        .size;

    return MouseRegion(
      onEnter: (_) => onEnter(),
      onExit: (_) => onExit(),
      child: GestureDetector(
        onTap: () {
          Clipboard.setData(ClipboardData(text: widget.gitmoji.code)).then(
            (_) => context.showSnackBar(
              '${widget.gitmoji.code} Coppied to clipboard',
            ),
          );
          controller.forward().then(
                (value) => controller.reverse(from: controller.value),
              );
        },
        onTapDown: (_) => onEnter(),
        onTapCancel: () => controller.reverse(from: controller.value),
        onTapUp: (_) => onExit(),
        child: Column(
          children: [
            text,
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
              clipBehavior: Clip.hardEdge,
              width: size.width,
              child: LinearProgressIndicator(
                value: animation.value,
                backgroundColor: Colors.transparent,
                valueColor: AlwaysStoppedAnimation<Color>(widget.gitmoji.color),
              ),
            )
          ],
        ),
      ),
    );
  }
}
