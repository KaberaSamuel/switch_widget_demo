# Switch Widget Demo

I made this app to learn how Flutter's `Switch` widget works. The switch changes
the app between light and dark themes.

## How it works

- `_isDarkTheme` stores whether dark mode is on.
- The switch shows that value. When I tap it, `onChanged` updates the value
  inside `setState`.
- Flutter rebuilds the screen, and `themeMode` applies the selected theme.
- The text on the screen also changes to show which theme is active.

## App demo

[Watch the app demo](Public/app-demo.mp4) to see the switch change the theme.

## Run the app

Run `flutter run` from the project folder.
