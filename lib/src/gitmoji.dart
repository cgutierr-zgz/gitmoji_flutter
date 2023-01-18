import 'dart:ui';

/// [Semver] effect of a given [Gitmoji] commit.
enum Semver {
  /// [Major] [Semver] change
  major,

  /// [Minor] [Semver] change
  minor,

  /// [Patch] [Semver] change
  patch,
}

/// {@template gitmoji}
/// Gitmoji for Flutter
/// {@endtemplate}
enum Gitmoji {
  /// Improve structure / format of the code
  art(
    emoji: '🎨',
    entity: '&#x1f3a8;',
    code: ':art:',
    description: 'Improve structure / format of the code.',
    name: 'art',
    semver: null,
    color: Color(0xffff7281),
  ),

  /// Improve performance
  zap(
    emoji: '⚡️',
    entity: '&#x26a1;',
    code: ':zap:',
    description: 'Improve performance.',
    name: 'zap',
    semver: Semver.patch,
    color: Color(0xff40c4ff),
  ),

  /// Remove code or files
  fire(
    emoji: '🔥',
    entity: '&#x1f525;',
    code: ':fire:',
    description: 'Remove code or files.',
    name: 'fire',
    semver: null,
    color: Color(0xffff9d44),
  ),

  /// Fix a bug
  bug(
    emoji: '🐛',
    entity: '&#x1f41b;',
    code: ':bug:',
    description: 'Fix a bug.',
    name: 'bug',
    semver: Semver.patch,
    color: Color(0xff8cd842),
  ),

  /// Critical hotfix
  ambulance(
    emoji: '🚑️',
    entity: '&#128657;',
    code: ':ambulance:',
    description: 'Critical hotfix.',
    name: 'ambulance',
    semver: Semver.patch,
    color: Color(0xfffb584a),
  ),

  /// Introduce new features
  sparkles(
    emoji: '✨',
    entity: '&#x2728;',
    code: ':sparkles:',
    description: 'Introduce new features.',
    name: 'sparkles',
    semver: Semver.minor,
    color: Color(0xffffe55f),
  ),

  /// Add or update documentation
  memo(
    emoji: '📝',
    entity: '&#x1f4dd;',
    code: ':memo:',
    description: 'Add or update documentation.',
    name: 'memo',
    semver: null,
    color: Color(0xff00e676),
  ),

  /// Deploy stuff
  rocket(
    emoji: '🚀',
    entity: '&#x1f680;',
    code: ':rocket:',
    description: 'Deploy stuff.',
    name: 'rocket',
    semver: null,
    color: Color(0xff00a9f0),
  ),

  /// Add or update the UI and style files
  lipstick(
    emoji: '💄',
    entity: '&#ff99cc;',
    code: ':lipstick:',
    description: 'Add or update the UI and style files.',
    name: 'lipstick',
    semver: Semver.patch,
    color: Color(0xff80deea),
  ),

  /// Begin a project
  tada(
    emoji: '🎉',
    entity: '&#127881;',
    code: ':tada:',
    description: 'Begin a project.',
    name: 'tada',
    semver: null,
    color: Color(0xfff74d5f),
  ),

  /// Add, update, or pass tests
  whiteCheckMark(
    emoji: '✅',
    entity: '&#x2705;',
    code: ':white_check_mark:',
    description: 'Add, update, or pass tests.',
    name: 'white-check-mark',
    semver: null,
    color: Color(0xff77e856),
  ),

  /// Fix security issues
  lock(
    emoji: '🔒️',
    entity: '&#x1f512;',
    code: ':lock:',
    description: 'Fix security issues.',
    name: 'lock',
    semver: Semver.patch,
    color: Color(0xffffce49),
  ),

  /// Add or update secrets
  closedLockWithKey(
    emoji: '🔐',
    entity: '&#x1f510;',
    code: ':closed_lock_with_key:',
    description: 'Add or update secrets.',
    name: 'closed-lock-with-key',
    semver: null,
    color: Color(0xff83beec),
  ),

  /// Release / Version tags
  bookmark(
    emoji: '🔖',
    entity: '&#x1f516;',
    code: ':bookmark:',
    description: 'Release / Version tags.',
    name: 'bookmark',
    semver: null,
    color: Color(0xff80deea),
  ),

  /// Fix compiler / linter warnings
  rotatingLight(
    emoji: '🚨',
    entity: '&#x1f6a8;',
    code: ':rotating_light:',
    description: 'Fix compiler / linter warnings.',
    name: 'rotating-light',
    semver: null,
    color: Color(0xff536dfe),
  ),

  /// Work in progress
  construction(
    emoji: '🚧',
    entity: '&#x1f6a7;',
    code: ':construction:',
    description: 'Work in progress.',
    name: 'construction',
    semver: null,
    color: Color(0xffffb74d),
  ),

  /// Fix CI Build
  greenHeart(
    emoji: '💚',
    entity: '&#x1f49a;',
    code: ':green_heart:',
    description: 'Fix CI Build.',
    name: 'green-heart',
    semver: null,
    color: Color(0xffc5e763),
  ),

  /// Downgrade dependencies
  arrowDown(
    emoji: '⬇️',
    entity: '⬇️',
    code: ':arrow_down:',
    description: 'Downgrade dependencies.',
    name: 'arrow-down',
    semver: Semver.patch,
    color: Color(0xffef5350),
  ),

  /// Upgrade dependencies
  arrowUp(
    emoji: '⬆️',
    entity: '⬆️',
    code: ':arrow_up:',
    description: 'Upgrade dependencies.',
    name: 'arrow-up',
    semver: Semver.patch,
    color: Color(0xff00e676),
  ),

  /// Pin dependencies to specific versions
  pushpin(
    emoji: '📌',
    entity: '&#x1F4CC;',
    code: ':pushpin:',
    description: 'Pin dependencies to specific versions.',
    name: 'pushpin',
    semver: Semver.patch,
    color: Color(0xff39c2f1),
  ),

  /// Add or update CI build system
  constructionWorker(
    emoji: '👷',
    entity: '&#x1f477;',
    code: ':construction_worker:',
    description: 'Add or update CI build system.',
    name: 'construction-worker',
    semver: null,
    color: Color(0xff64b5f6),
  ),

  /// Add or update analytics or track code
  chartWithUpwardsTrend(
    emoji: '📈',
    entity: '&#x1F4C8;',
    code: ':chart_with_upwards_trend:',
    description: 'Add or update analytics or track code.',
    name: 'chart-with-upwards-trend',
    semver: Semver.patch,
    color: Color(0xffcedae6),
  ),

  /// Refactor code
  recycle(
    emoji: '♻️',
    entity: '&#x267b;',
    code: ':recycle:',
    description: 'Refactor code.',
    name: 'recycle',
    semver: null,
    color: Color(0xff77e856),
  ),

  /// Add a dependency
  heavyPlusSign(
    emoji: '➕',
    entity: '&#10133;',
    code: ':heavy_plus_sign:',
    description: 'Add a dependency.',
    name: 'heavy-plus-sign',
    semver: Semver.patch,
    color: Color(0xff00e676),
  ),

  /// Remove a dependency
  heavyMinusSign(
    emoji: '➖',
    entity: '&#10134;',
    code: ':heavy_minus_sign:',
    description: 'Remove a dependency.',
    name: 'heavy-minus-sign',
    semver: Semver.patch,
    color: Color(0xffef5350),
  ),

  /// Add or update configuration files
  wrench(
    emoji: '🔧',
    entity: '&#x1f527;',
    code: ':wrench:',
    description: 'Add or update configuration files.',
    name: 'wrench',
    semver: Semver.patch,
    color: Color(0xffffc400),
  ),

  /// Add or update development scripts
  hammer(
    emoji: '🔨',
    entity: '&#128296;',
    code: ':hammer:',
    description: 'Add or update development scripts.',
    name: 'hammer',
    semver: null,
    color: Color(0xffffc400),
  ),

  /// Internationalization and localization
  globeWithMeridians(
    emoji: '🌐',
    entity: '&#127760;',
    code: ':globe_with_meridians:',
    description: 'Internationalization and localization.',
    name: 'globe-with-meridians',
    semver: Semver.patch,
    color: Color(0xffe7f4ff),
  ),

  /// Fix typos
  pencil2(
    emoji: '✏️',
    entity: '&#59161;',
    code: ':pencil2:',
    description: 'Fix typos.',
    name: 'pencil2',
    semver: Semver.patch,
    color: Color(0xffffce49),
  ),

  /// Write bad code that needs to be improved
  poop(
    emoji: '💩',
    entity: '&#58613;',
    code: ':poop:',
    description: 'Write bad code that needs to be improved.',
    name: 'poop',
    semver: null,
    color: Color(0xffa78674),
  ),

  /// Revert changes
  rewind(
    emoji: '⏪️',
    entity: '&#9194;',
    code: ':rewind:',
    description: 'Revert changes.',
    name: 'rewind',
    semver: Semver.patch,
    color: Color(0xff56d1d8),
  ),

  /// Merge branches
  twistedRightwardsArrows(
    emoji: '🔀',
    entity: '&#128256;',
    code: ':twisted_rightwards_arrows:',
    description: 'Merge branches.',
    name: 'twisted-rightwards-arrows',
    semver: null,
    color: Color(0xff56d1d8),
  ),

  /// Add or update compiled files or packages
  package(
    emoji: '📦️',
    entity: '&#1F4E6;',
    code: ':package:',
    description: 'Add or update compiled files or packages.',
    name: 'package',
    semver: Semver.patch,
    color: Color(0xfffdd0ae),
  ),

  /// Update code due to external API changes
  alien(
    emoji: '👽️',
    entity: '&#1F47D;',
    code: ':alien:',
    description: 'Update code due to external API changes.',
    name: 'alien',
    semver: Semver.patch,
    color: Color(0xffc5e763),
  ),

  /// Move or rename resources (e.g.: files, paths, routes)
  truck(
    emoji: '🚚',
    entity: '&#1F69A;',
    code: ':truck:',
    description: 'Move or rename resources (e.g.: files, paths, routes).',
    name: 'truck',
    semver: null,
    color: Color(0xffef584a),
  ),

  /// Add or update license
  pageFacingUp(
    emoji: '📄',
    entity: '&#1F4C4;',
    code: ':page_facing_up:',
    description: 'Add or update license.',
    name: 'page-facing-up',
    semver: null,
    color: Color(0xffd9e3e8),
  ),

  /// Introduce breaking changes
  boom(
    emoji: '💥',
    entity: '&#x1f4a5;',
    code: ':boom:',
    description: 'Introduce breaking changes.',
    name: 'boom',
    semver: Semver.major,
    color: Color(0xfff94f28),
  ),

  /// Add or update assets
  bento(
    emoji: '🍱',
    entity: '&#1F371',
    code: ':bento:',
    description: 'Add or update assets.',
    name: 'bento',
    semver: Semver.patch,
    color: Color(0xffff5864),
  ),

  /// Improve accessibility
  wheelchair(
    emoji: '♿️',
    entity: '&#9855;',
    code: ':wheelchair:',
    description: 'Improve accessibility.',
    name: 'wheelchair',
    semver: Semver.patch,
    color: Color(0xff00b1fb),
  ),

  /// Add or update comments in source code
  bulb(
    emoji: '💡',
    entity: '&#128161;',
    code: ':bulb:',
    description: 'Add or update comments in source code.',
    name: 'bulb',
    semver: null,
    color: Color(0xffffce49),
  ),

  /// Write code drunkenly
  beers(
    emoji: '🍻',
    entity: '&#x1f37b;',
    code: ':beers:',
    description: 'Write code drunkenly.',
    name: 'beers',
    semver: null,
    color: Color(0xfffbb64b),
  ),

  /// Add or update text and literals
  speechBalloon(
    emoji: '💬',
    entity: '&#128172;',
    code: ':speech_balloon:',
    description: 'Add or update text and literals.',
    name: 'speech-balloon',
    semver: Semver.patch,
    color: Color(0xffcedae6),
  ),

  /// Perform database related changes
  cardFileBox(
    emoji: '🗃️',
    entity: '&#128451;',
    code: ':card_file_box:',
    description: 'Perform database related changes.',
    name: 'card-file-box',
    semver: Semver.patch,
    color: Color(0xffc5e763),
  ),

  /// Add or update logs
  loudSound(
    emoji: '🔊',
    entity: '&#128266;',
    code: ':loud_sound:',
    description: 'Add or update logs.',
    name: 'loud-sound',
    semver: null,
    color: Color(0xff23b4d2),
  ),

  /// Remove logs
  mute(
    emoji: '🔇',
    entity: '&#128263;',
    code: ':mute:',
    description: 'Remove logs.',
    name: 'mute',
    semver: null,
    color: Color(0xffe6ebef),
  ),

  /// Add or update contributor(s)
  bustsInSilhouette(
    emoji: '👥',
    entity: '&#128101;',
    code: ':busts_in_silhouette:',
    description: 'Add or update contributor(s).',
    name: 'busts-in-silhouette',
    semver: null,
    color: Color(0xffffce49),
  ),

  /// Improve user experience / usability
  childrenCrossing(
    emoji: '🚸',
    entity: '&#128696;',
    code: ':children_crossing:',
    description: 'Improve user experience / usability.',
    name: 'children-crossing',
    semver: Semver.patch,
    color: Color(0xffffce49),
  ),

  /// Make architectural changes
  buildingConstruction(
    emoji: '🏗️',
    entity: '&#1f3d7;',
    code: ':building_construction:',
    description: 'Make architectural changes.',
    name: 'building-construction',
    semver: null,
    color: Color(0xffffe55f),
  ),

  /// Work on responsive design
  iphone(
    emoji: '📱',
    entity: '&#128241;',
    code: ':iphone:',
    description: 'Work on responsive design.',
    name: 'iphone',
    semver: Semver.patch,
    color: Color(0xff40c4ff),
  ),

  /// Mock things
  clownFace(
    emoji: '🤡',
    entity: '&#129313;',
    code: ':clown_face:',
    description: 'Mock things.',
    name: 'clown-face',
    semver: null,
    color: Color(0xffff7281),
  ),

  /// Add or update an easter egg
  egg(
    emoji: '🥚',
    entity: '&#129370;',
    code: ':egg:',
    description: 'Add or update an easter egg.',
    name: 'egg',
    semver: Semver.patch,
    color: Color(0xff77e856),
  ),

  /// Add or update a .gitignore file
  seeNoEvil(
    emoji: '🙈',
    entity: '&#8bdfe7;',
    code: ':see_no_evil:',
    description: 'Add or update a .gitignore file.',
    name: 'see-no-evil',
    semver: null,
    color: Color(0xff8bdfe7),
  ),

  /// Add or update snapshots
  cameraFlash(
    emoji: '📸',
    entity: '&#128248;',
    code: ':camera_flash:',
    description: 'Add or update snapshots.',
    name: 'camera-flash',
    semver: null,
    color: Color(0xff00a9f0),
  ),

  /// Perform experiments
  alembic(
    emoji: '⚗️',
    entity: '&#128248;',
    code: ':alembic:',
    description: 'Perform experiments.',
    name: 'alembic',
    semver: Semver.patch,
    color: Color(0xff7f39fb),
  ),

  /// Improve SEO
  mag(
    emoji: '🔍️',
    entity: '&#128269;',
    code: ':mag:',
    description: 'Improve SEO.',
    name: 'mag',
    semver: Semver.patch,
    color: Color(0xffffe55f),
  ),

  /// Add or update types
  label(
    emoji: '🏷️',
    entity: '&#127991;',
    code: ':label:',
    description: 'Add or update types.',
    name: 'label',
    semver: Semver.patch,
    color: Color(0xffcb63e6),
  ),

  /// Add or update seed files
  seedling(
    emoji: '🌱',
    entity: '&#127793;',
    code: ':seedling:',
    description: 'Add or update seed files.',
    name: 'seedling',
    semver: null,
    color: Color(0xffc5e763),
  ),

  /// Add, update, or remove feature flags
  triangularFlagOnPost(
    emoji: '🚩',
    entity: '&#x1F6A9;',
    code: ':triangular_flag_on_post:',
    description: 'Add, update, or remove feature flags.',
    name: 'triangular-flag-on-post',
    semver: Semver.patch,
    color: Color(0xffffce49),
  ),

  /// Catch errors
  goalNet(
    emoji: '🥅',
    entity: '&#x1F945;',
    code: ':goal_net:',
    description: 'Catch errors.',
    name: 'goal-net',
    semver: Semver.patch,
    color: Color(0xffc7cb12),
  ),

  /// Add or update animations and transitions
  animation(
    emoji: '💫',
    entity: '&#x1f4ab;',
    code: ':dizzy:',
    description: 'Add or update animations and transitions.',
    name: 'animation',
    semver: Semver.patch,
    color: Color(0xffffdb3a),
  ),

  /// Deprecate code that needs to be cleaned up
  wastebasket(
    emoji: '🗑️',
    entity: '&#x1F5D1;',
    code: ':wastebasket:',
    description: 'Deprecate code that needs to be cleaned up.',
    name: 'wastebasket',
    semver: Semver.patch,
    color: Color(0xffd9e3e8),
  ),

  /// Work on code related to authorization, roles and permissions
  passportControl(
    emoji: '🛂',
    entity: '&#x1F6C2;',
    code: ':passport_control:',
    description:
        'Work on code related to authorization, roles and permissions.',
    name: 'passport-control',
    semver: Semver.patch,
    color: Color(0xff4dc6dc),
  ),

  /// Simple fix for a non-critical issue
  adhesiveBandage(
    emoji: '🩹',
    entity: '&#x1FA79;',
    code: ':adhesive_bandage:',
    description: 'Simple fix for a non-critical issue.',
    name: 'adhesive-bandage',
    semver: Semver.patch,
    color: Color(0xfffbcfb7),
  ),

  /// Data exploration/inspection
  monocleFace(
    emoji: '🧐',
    entity: '&#x1F9D0;',
    code: ':monocle_face:',
    description: 'Data exploration/inspection.',
    name: 'monocle-face',
    semver: null,
    color: Color(0xffffe55f),
  ),

  /// Remove dead code
  coffin(
    emoji: '⚰️',
    entity: '&#x26B0;',
    code: ':coffin:',
    description: 'Remove dead code.',
    name: 'coffin',
    semver: null,
    color: Color(0xffd9e3e8),
  ),

  /// Add a failing test
  testTube(
    emoji: '🧪',
    entity: '&#x1F9EA;',
    code: ':test_tube:',
    description: 'Add a failing test.',
    name: 'test-tube',
    semver: null,
    color: Color(0xfffb584a),
  ),

  /// Add or update business logic
  necktie(
    emoji: '👔',
    entity: '&#128084;',
    code: ':necktie:',
    description: 'Add or update business logic.',
    name: 'necktie',
    semver: Semver.patch,
    color: Color(0xff83beec),
  ),

  /// Add or update healthcheck
  stethoscope(
    emoji: '🩺',
    entity: '&#x1FA7A;',
    code: ':stethoscope:',
    description: 'Add or update healthcheck.',
    name: 'stethoscope',
    semver: null,
    color: Color(0xff77e856),
  ),

  /// Infrastructure related changes
  bricks(
    emoji: '🧱',
    entity: '&#x1f9f1;',
    code: ':bricks:',
    description: 'Infrastructure related changes.',
    name: 'bricks',
    semver: null,
    color: Color(0xffff6723),
  ),

  /// Improve developer experience
  technologist(
    emoji: '🧑‍💻',
    entity: '&#129489;&#8205;&#128187;',
    code: ':technologist:',
    description: 'Improve developer experience.',
    name: 'technologist',
    semver: null,
    color: Color(0xff86B837),
  ),

  /// Add sponsorships or money related infrastructure
  moneyWithWings(
    emoji: '💸',
    entity: '&#x1F4B8;',
    code: ':money_with_wings:',
    description: 'Add sponsorships or money related infrastructure.',
    name: 'money-with-wings',
    semver: null,
    color: Color(0xffb3c0b1),
  ),

  /// Add or update code related to multithreading or concurrency
  thread(
    emoji: '🧵',
    entity: '&#x1F9F5;',
    code: ':thread:',
    description: 'Add or update code related to multithreading or concurrency.',
    name: 'thread',
    semver: null,
    color: Color(0xffffbe7b),
  ),

  /// Add or update code related to validation
  safetyVest(
    emoji: '🦺',
    entity: '&#x1F9BA;',
    code: ':safety_vest:',
    description: 'Add or update code related to validation.',
    name: 'safety-vest',
    semver: null,
    color: Color(0xfff2ad52),
  );

  /// {@macro gitmoji}
  const Gitmoji({
    required this.emoji,
    required this.entity,
    required this.code,
    required this.description,
    required this.name,
    required this.semver,
    required this.color,
  });

  /// Emoji of the [Gitmoji]s
  final String emoji;

  /// Entity of the [Gitmoji]s
  final String entity;

  /// Code of the [Gitmoji]s
  final String code;

  /// Description of the [Gitmoji]s
  final String description;

  /// Name of the [Gitmoji]s
  final String name;

  /// [Semver] of the [Gitmoji]s, if applicable
  final Semver? semver;

  /// [Gitmoji]s Hex color code
  final Color color;

  /// Returns the [Gitmoji] version
  /// Library version is based on the [latest gitmoji release](https://github.com/carloscuesta/gitmoji/releases)
  static String get version => '3.13.3';

  /// Returns all the [Gitmoji]s
  static List<Gitmoji> get all => values;

  /// Returns the [Gitmoji]s with [Semver.major] semver
  static List<Gitmoji> get major =>
      values.where((e) => e.semver == Semver.major).toList();

  /// Returns the [Gitmoji]s with [Semver.minor] semver
  static List<Gitmoji> get minor =>
      values.where((e) => e.semver == Semver.minor).toList();

  /// Returns the [Gitmoji]s with [Semver.patch] semver
  static List<Gitmoji> get patch =>
      values.where((e) => e.semver == Semver.patch).toList();

  /// Returns the [Gitmoji]s withthout [Semver]
  static List<Gitmoji> get none =>
      values.where((e) => e.semver == null).toList();

  /// Returns all the gitmojis with properties matching the [query]
  static List<Gitmoji> search(String query) {
    final lwquery = query.toLowerCase();

    return values.where((e) {
      return e.emoji.toLowerCase().contains(lwquery) ||
          // e.entity.toLowerCase().contains(lwquery) ||
          e.code.toLowerCase().contains(lwquery) ||
          e.description.toLowerCase().contains(lwquery) ||
          e.name.toLowerCase().contains(lwquery) ||
          (e.semver != null &&
              e.semver!.toString().toLowerCase().contains(lwquery));
    }).toList();
  }
}
