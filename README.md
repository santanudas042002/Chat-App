
Title
Flutter Chat App (Light/Dark + Tabs)

Description
A modular Flutter chat UI that walks users through onboarding → phone login with OTP (Pinput) → profile setup, then lands on a three‑tab interface (Contacts, Chats, More). The app uses a persistent BottomNavigation with IndexedStack to preserve state and delivers full light/dark theming across screens.

Features
- Adaptive theming with Theme Cubit (flutter_bloc), centralized AppColors, and custom ThemeData for consistent visuals.
- Three tabs with preserved state: Contacts, Chats, and More, powered by BottomNavigationBar + IndexedStack.
- Chats screen: story strip, search bar, chat list with unread badge; Contacts screen with avatars and last‑seen; More/Settings with profile card and reusable tiles.
- Reusable UI kit: CustomText, CustomImage, CustomButton, CustomTextField to keep the design consistent and code DRY.
- Asset pipeline with Mulish font and images configured via pubspec.yaml.

Project structure
- lib/domain/constant — AppColors, themes, ThemeCubit/State.
- lib/repositry/Screen — Feature‑wise screens (onboarding, login, OTP, profile, bottomnav, chats, contacts, more).
- lib/repositry/Screen/uihelper.dart — Reusable widgets and helpers.

Getting started
- flutter pub get  
- flutter run

Tech stack
- Flutter 3.9, Dart; flutter_bloc, pinput, cupertino_icons; Material theming with centralized color tokens.
