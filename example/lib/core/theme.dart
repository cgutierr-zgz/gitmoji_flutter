import 'package:flutter/material.dart';

abstract class AppTheme {
  final cardBackground = const Color(0xffffffff);
  final darkCardBackground = const Color(0xff2b2b2b);

  static ThemeData get lightTheme => ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Avenir',
      );

  static ThemeData get darkTheme => ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        fontFamily: 'Avenir',
      );
}

/*
:root {
  --background: #ffffff;
  --primary: #ffdd67;
  --primaryShadow: #ffcc1b;
  --secondary: #ff5a79;
  --secondaryShadow: #f3002e;
  --textInPrimary: #000000;
  --textInSecondary: #ffffff;
  --footerBackground: #00e5ff;
  --cardBackground: #ffffff;
  --cardText: #999999;
  --emojiCodeText: #000000;
  --cardShadow: rgba(168, 182, 191, 0.6);
  --notificationText: #ffffff;
  --notificationShadow: rgba(0, 0, 0, 0.05);
  --notificationEmojiCodeColor: rgba(0, 0, 0, 0.85);
  --menuBackground: #ff5a79;
  --carbonAdBadgeBackground: #f1f1f1;
}

[data-theme='dark'] {
  --background: #121212;
  --primary: #ffdd67;
  --primaryShadow: #ffcc1b;
  --secondary: #ff5a79;
  --secondaryShadow: #f3002e;
  --textInPrimary: #000000;
  --textInSecondary: #ffffff;
  --footerBackground: #00e5ff;
  --cardBackground: #2b2b2b;
  --cardText: #ffffff;
  --emojiCodeText: #ffffff;
  --cardShadow: none;
  --notificationText: #ffffff;
  --notificationShadow: rgba(0, 0, 0, 0.05);
  --notificationEmojiCodeColor: rgba(0, 0, 0, 0.85);
  --menuBackground: #ff5a79;
  --carbonAdBadgeBackground: #2b2b2b;
}

[data-theme='dark'] body {
  color: var(--cardText);
}

html,
body {
  background-color: var(--background);
  margin: 0;
  padding: 0;
  font-size: 16.5px;
  font-family: Avenir, -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Roboto',
    'Oxygen', 'Ubuntu', 'Cantarell', 'Fira Sans', 'Droid Sans', 'Helvetica Neue'
    sans-serif;
}

h1 {
  font-size: 2em;
}

a {
  text-decoration: none;
  color: var(--secondary);
}

a:hover {
  animation: zomg 0.5s infinite;
}

@media (prefers-reduced-motion: reduce) {
  a:hover {
    animation: none;
    text-decoration: underline;
  }
}

code {
  font-family: Avenir, -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Roboto',
    'Oxygen', 'Ubuntu', 'Cantarell', 'Fira Sans', 'Droid Sans', 'Helvetica Neue'
    sans-serif;
  font-weight: 700;
  font-size: 1.25em;
  word-break: break-all;
}

section {
  padding: 0.5em;
}

pre {
  background-color: var(--primary);
  border-radius: 4px;
  box-shadow: 0 4px var(--primaryShadow);
  color: var(--textInPrimary);
  padding: 1em;
}

.wrap {
  max-width: 1100px;
  margin: 0 auto;
}

main.wrap {
  padding: 2em;
}

@keyframes zomg {
  0%,
  100% {
    color: #7ccdea;
  }

  16% {
    color: #0074d9;
  }

  32% {
    color: #2ecc40;
  }

  48% {
    color: #ffdc00;
  }

  64% {
    color: #b10dc9;
  }

  80% {
    color: #ff4136;
  }
}

@media (min-width: 2048px) {
  html,
  body {
    font-size: 19px;
  }
}

/* Flexboxgrid critical */

.col-sm-2,
.col-xs-12,
.col-xs-3,
.row {
  box-sizing: border-box;
}
.container {
  margin-right: auto;
  margin-left: auto;
}
.row {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-flex: 0;
  -webkit-flex: 0 1 auto;
  -ms-flex: 0 1 auto;
  flex: 0 1 auto;
  -webkit-box-orient: horizontal;
  -webkit-box-direction: normal;
  -webkit-flex-direction: row;
  -ms-flex-direction: row;
  flex-direction: row;
  -webkit-flex-wrap: wrap;
  -ms-flex-wrap: wrap;
  flex-wrap: wrap;
  margin-right: -0.5rem;
  margin-left: -0.5rem;
}
.col-xs-12,
.col-xs-3 {
  -webkit-box-flex: 0;
  -webkit-flex: 0 0 auto;
  -ms-flex: 0 0 auto;
  flex: 0 0 auto;
  padding-right: 1.25rem;
  padding-left: 1.25rem;
}
.col-xs-12 {
  -webkit-flex-basis: 100%;
  -ms-flex-preferred-size: 100%;
  flex-basis: 100%;
  max-width: 100%;
}
.col-xs-3 {
  -ms-flex-preferred-size: 25%;
  flex-basis: 25%;
  max-width: 25%;
}
.center-xs {
  -webkit-box-pack: center;
  -webkit-justify-content: center;
  -ms-flex-pack: center;
  justify-content: center;
  text-align: center;
}
.middle-xs {
  -webkit-box-align: center;
  -webkit-align-items: center;
  -ms-flex-align: center;
  align-items: center;
}
@media only screen and (min-width: 48em) {
  .container {
    width: 49rem;
  }
  .col-sm-2,
  .col-sm-6 {
    box-sizing: border-box;
    -webkit-box-flex: 0;
    -webkit-flex: 0 0 auto;
    -ms-flex: 0 0 auto;
    flex: 0 0 auto;
    padding-right: 1.25rem;
    padding-left: 1.25rem;
  }
  .col-sm-6 {
    -webkit-flex-basis: 50%;
    -ms-flex-preferred-size: 50%;
    flex-basis: 50%;
    max-width: 50%;
  }
  .col-sm-2 {
    -ms-flex-preferred-size: 16.66666667%;
    flex-basis: 16.66666667%;
    max-width: 16.66666667%;
  }
}
@media only screen and (min-width: 64em) {
  .container {
    width: 65rem;
  }
  .col-md-3 {
    box-sizing: border-box;
    -webkit-box-flex: 0;
    -webkit-flex: 0 0 auto;
    -ms-flex: 0 0 auto;
    flex: 0 0 auto;
    padding-right: 1.25rem;
    padding-left: 1.25rem;
    -ms-flex-preferred-size: 25%;
    flex-basis: 25%;
    max-width: 25%;
  }
  .col-md-4 {
    -ms-flex-preferred-size: 33.33333333%;
    flex-basis: 33.33333333%;
    max-width: 33.33333333%;
  }
}

/* Notifications */

.ns-box {
  position: fixed;
  padding: 22px;
  line-height: 1.4;
  z-index: 1000;
  pointer-events: none;
  color: var(--notificationText);
  font-size: 90%;
  font-weight: 600;
}

.ns-box p {
  margin: 0;
}

.ns-box .gitmoji-code {
  padding: 0 4px;
  border-radius: 4px;
  background-color: var(--notificationEmojiCodeColor);
  color: var(--notificationText);
}

.ns-box a {
  color: inherit;
  opacity: 0.7;
  font-weight: 700;
}

.ns-box a:hover,
.ns-box a:focus {
  opacity: 1;
}

.ns-box.ns-show {
  pointer-events: auto;
}

.ns-box.ns-show,
.ns-box.ns-visible {
  pointer-events: auto;
}

.ns-close {
  width: 20px;
  height: 20px;
  position: absolute;
  right: 4px;
  top: 4px;
  overflow: hidden;
  text-indent: 100%;
  cursor: pointer;
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
}

.ns-close:hover,
.ns-close:focus {
  outline: none;
}

.ns-close::before,
.ns-close::after {
  content: '';
  position: absolute;
  width: 3px;
  height: 60%;
  top: 50%;
  left: 50%;
}

.ns-close:hover::before,
.ns-close:hover::after {
  background: var(--notificationText);
}

.ns-close::before {
  -webkit-transform: translate(-50%, -50%) rotate(45deg);
  transform: translate(-50%, -50%) rotate(45deg);
}

.ns-close::after {
  -webkit-transform: translate(-50%, -50%) rotate(-45deg);
  transform: translate(-50%, -50%) rotate(-45deg);
}

/* Growl-style notifications */
.ns-growl {
  top: 30px;
  left: 30px;
  max-width: 350px;
  border-radius: 5px;
}

.ns-growl p {
  margin: 0;
  line-height: 1.3;
}

[class^='ns-effect-'].ns-growl.ns-hide,
[class*=' ns-effect-'].ns-growl.ns-hide {
  -webkit-animation-direction: reverse;
  animation-direction: reverse;
}

/* Individual effects */

/* Scale */
.ns-effect-scale {
  background: var(--secondary);
  box-shadow: 0 25px 10px -15px var(--notificationShadow);
}

.ns-effect-scale a:hover,
.ns-effect-scale a:focus {
  color: var(--textInSecondary);
}

.ns-effect-scale .ns-close::before,
.ns-effect-scale .ns-close::after {
  background: var(--notificationText);
}

.ns-effect-scale.ns-show,
.ns-effect-scale.ns-hide {
  -webkit-animation-name: animScale;
  animation-name: animScale;
  -webkit-animation-duration: 0.25s;
  animation-duration: 0.25s;
}

@-webkit-keyframes animScale {
  0% {
    opacity: 0;
    -webkit-transform: translate3d(0, 40px, 0) scale3d(0.1, 0.6, 1);
  }

  100% {
    opacity: 1;
    -webkit-transform: translate3d(0, 0, 0) scale3d(1, 1, 1);
  }
}

@keyframes animScale {
  0% {
    opacity: 0;
    -webkit-transform: translate3d(0, 40px, 0) scale3d(0.1, 0.6, 1);
    transform: translate3d(0, 40px, 0) scale3d(0.1, 0.6, 1);
  }

  100% {
    opacity: 1;
    -webkit-transform: translate3d(0, 0, 0) scale3d(1, 1, 1);
    transform: translate3d(0, 0, 0) scale3d(1, 1, 1);
  }
}

@media screen and (max-width: 25em) {
  .ns-growl {
    top: 10px;
    left: 10px;
    right: 10px;
    max-width: none;
  }
}
*/
