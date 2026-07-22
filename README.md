# Flutter Grocery Store Application

A multi-screen grocery shopping interface built with Flutter. The application covers product discovery, category browsing, favorites, cart management, checkout, payment selection, and order confirmation through reusable widgets and in-memory data models.

## Features

- Onboarding flow
- Product categories and searchable catalog structure
- Product detail and grid views
- Favorites and cart state
- Checkout and payment-selection screens
- Responsive Flutter targets for mobile, web, and desktop

## Project structure

- `lib/Screens/` — application screens and navigation destinations
- `lib/CustomWidgets/` — reusable product and layout components
- `lib/Functions/` — cart, favorites, search, and total calculations
- `lib/Lists/` — local product and UI data
- `assets/images/` — application artwork and icons
- `test/` — Flutter widget test location

## Run locally

Install a Flutter SDK compatible with the version constraint in `pubspec.yaml`, then run:

```bash
flutter pub get
flutter run
```

Choose an attached device or a supported browser when prompted.

## Validation

```bash
flutter analyze
flutter test
```

## Project scope

This repository focuses on the client-side shopping experience. Product information and cart state are represented locally rather than through a production commerce backend.
