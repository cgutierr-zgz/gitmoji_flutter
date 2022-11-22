import 'package:flutter/material.dart';
import 'package:gitmoji/gitmoji.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gitmoji',
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Wrap(
                  runSpacing: 25,
                  spacing: 25,
                  children: List.generate(
                    Gitmoji.all.length,
                    (i) => GitmojiWidget(Gitmoji.all[i]),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class GitmojiWidget extends StatelessWidget {
  const GitmojiWidget(this.gitmoji, {super.key});

  final Gitmoji gitmoji;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade900,
      ),
      clipBehavior: Clip.hardEdge,
      child: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              color: Colors.red, // gitmoji.code
              width: double.maxFinite,
              child: Text(
                gitmoji.emoji,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 50),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _GitmojiTextSelector(gitmoji),
                  const SizedBox(height: 10),
                  Expanded(
                    child: Text(
                      gitmoji.description,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
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

class _GitmojiTextSelectorState extends State<_GitmojiTextSelector> {
  late bool isOnHover;

  @override
  void initState() {
    super.initState();
    isOnHover = false;
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isOnHover = true),
      onExit: (_) => setState(() => isOnHover = false),
      child: GestureDetector(
        onTapDown: (_) => setState(() => isOnHover = true),
        onTapUp: (_) => setState(() => isOnHover = false),
        onTap: () => ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(
            SnackBar(
              content: Text(
                '${widget.gitmoji.emoji}${widget.gitmoji.code} Coppied to clipboard',
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              backgroundColor: Colors.grey.shade900,
              duration: const Duration(seconds: 3),
              behavior: SnackBarBehavior.floating,
              elevation: 10,
            ),
          ),
        child: Text(
          widget.gitmoji.code,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            //color: Colors.white,
            color: isOnHover ? Colors.white : Colors.grey.shade600,
          ),
        ),
      ),
    );
  }
}
