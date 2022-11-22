// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter_test/flutter_test.dart';
import 'package:gitmoji/gitmoji.dart';

void main() {
  const actualVersion = '3.13.0';
  const actualGitmojis = 73;
  const actualGitmojisMajor = 1;
  const actualGitmojisMinor = 1;
  const actualGitmojisPatch = 34;
  const actualGitmojisNoSemver = actualGitmojis - (actualGitmojisMajor + actualGitmojisMinor + actualGitmojisPatch);

  group('Gitmoji', () {
    test('can get all values', () {
      final gitmojiVersion = Gitmoji.version;

      expect(gitmojiVersion, isNotEmpty);
      expect(gitmojiVersion, isA<String>());
      expect(gitmojiVersion, actualVersion);
    });

    test('can get all values', () {
      final gitmojis = Gitmoji.all;

      expect(gitmojis, isNotEmpty);
      expect(gitmojis, isA<List<Gitmoji>>());
      expect(gitmojis.length, actualGitmojis);
    });

    test('can get all gitmojis based on semver', () {
      final gitmojisMajor = Gitmoji.major;

      expect(gitmojisMajor, isNotEmpty);
      expect(gitmojisMajor, isA<List<Gitmoji>>());
      expect(gitmojisMajor.length, actualGitmojisMajor);

      final gitmojisMinor = Gitmoji.minor;

      expect(gitmojisMinor, isNotEmpty);
      expect(gitmojisMinor, isA<List<Gitmoji>>());
      expect(gitmojisMinor.length, actualGitmojisMinor);

      final gitmojisPatch = Gitmoji.patch;

      expect(gitmojisPatch, isNotEmpty);
      expect(gitmojisPatch, isA<List<Gitmoji>>());
      expect(gitmojisPatch.length, actualGitmojisPatch);

      final gitmojisNoSemver = Gitmoji.none;

      expect(gitmojisNoSemver, isNotEmpty);
      expect(gitmojisNoSemver, isA<List<Gitmoji>>());
      expect(gitmojisNoSemver.length, actualGitmojisNoSemver);
    });
  });
}