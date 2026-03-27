# Navigation Lab

A Flutter app demonstrating bottom navigation with three tabs (Home, Favorites, Profile) and stack-based navigation to a Details screen.

| App Screenshot | Widget Tree |
|:-:|:-:|
| ![App Screenshot](screenshots/screenshot.png) | ![Widget Tree](screenshots/widget_tree.png) |

## Description

This lab demonstrates Flutter navigation patterns:
- `BottomNavigationBar` with three `BottomNavigationBarItem` entries
- `StatefulWidget` (`MainScreen`) managing the selected tab index
- Stack-based navigation using `Navigator.push` / `Navigator.pop` with `MaterialPageRoute`
- Three tab screens: `HomeScreen`, `FavoritesScreen`, `ProfilesScreen`
- `DetailsScreen` navigated to from the Home tab
