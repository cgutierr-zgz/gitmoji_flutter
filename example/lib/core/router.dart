import 'package:example/gitmojis/gitmojis.dart';
import 'package:flutter/material.dart';
import 'package:gitmoji/gitmoji.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static GoRouter get router => GoRouter(
        routes: [
          GoRoute(
            path: '/',
            pageBuilder: (context, state) => MaterialPage<void>(
              key: state.pageKey,
              child: const GitmojiPage(),
            ),
          ),
          ...Gitmoji.all
              .map(
                (g) => GoRoute(
                  path: g.path,
                  pageBuilder: (context, state) => MaterialPage<void>(
                    key: state.pageKey,
                    child: g.view,
                  ),
                ),
              )
              .toList(),
        ],
      );
}

extension AppRoutesX on Gitmoji {
  String get path => '/gitmoji/$code';
  Widget get view => GitmojiWidget(this);

  void go(BuildContext context) => context.go(path);
  void push(BuildContext context) => context.push(path);
  void replace(BuildContext context) => context.replace(path);
}
