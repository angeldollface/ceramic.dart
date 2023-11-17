# CERAMIC.DART :iphone: :lock: :dart: :joystick:

[![GitHub CI](https://github.com/angeldollface/ceramic.dart/actions/workflows/flutter.yml/badge.svg)](https://github.com/angeldollface/ceramic.dart/actions)

***My graphical implementation in Flutter of an IMEI validation app. :iphone: :lock: :dart: :joystick:***

## ABOUT :books:

Since I implemented the Luhn algorithm to validate IMEI numbers in multiple languages, I thought, to showcase my Flutter skills, I'd give my Dart implementation of this algorithm a shiny frontend. This repository contains the source code for that shiny frontend.

## LINKS :earth_americas:

- Library implementation in ECMA Script: [VIEW](https://github.com/angeldollface/luhny)
- Library implementation in Dart: [VIEW](https://github.com/angeldollface/luhny.dart)
- Library implementation in Python: [VIEW](https://github.com/angeldollface/pyluhny)
- Library implementation in Rust: [VIEW](https://github.com/angeldollface/luhny.rs)
- Web app implementation in Vue.js: [VIEW](https://github.com/angeldollface/ceramic)
- Web app implementation in React: [VIEW](https://github.com/angeldollface/react-ceramic)
- Web app implementation in C#: [VIEW](https://github.com/angeldollface/ceramic-api.cs)
- Library implementation in C#: [VIEW](https://github.com/angeldollface/luhny.cs)

## DEPLOYED PROJECT ON GITHUB PAGES :rocket:

You can view the live, deployed project on GitHub Pages [here](https://angeldollface.art/ceramic.dart).

## INSTALLATION :inbox_tray:

There are compiled bundles for the web and Mac OSX in this repository's [Releases Section](https://github.com/angeldollface/ceramic.dart/releases).

### Build from source

Make sure you have the following tools installed and, where required, available from the command line:

- [Flutter](https://flutter.dev)
- [Git](https://git-scm.org)
- For testing and rendering on the web: [Chrome](https://www.google.com/chrome/)
- For Mac OSX: [XCode](https://developer.apple.com/xcode/)

To build bundles for the platform of your choice from the source code, execute the following steps on the command line:

- 1.) Get the source code:

```bash
git clone https://github.com/angeldollface/ceramic.dart.git
```

- 2.) Change directory into the source code's root directory:

```bash
cd ceramic.dart
```

- 3a.) Build for a web target:

```bash
flutter build web --release
```

- 3b.) Build for a Mac OSX target:

```bash
flutter build macos --release
```

- 4.) Run the generated bundle on the platform of your choice.

## CHANGELOG :black_nib:

### Version 1.0.0

- Initial release
- Upload to GitHub
- Deployment on GitHub Pages

## NOTE :scroll:

- *Ceramic.dart :iphone: :lock: :dart: :joystick:* by Alexander Abraham :black_heart: a.k.a. *"Angel Dollface" :dolls: :ribbon:*
- Licensed under the MIT license.
