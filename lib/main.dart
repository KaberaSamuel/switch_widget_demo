import 'package:flutter/material.dart';

// Starts the app and shows SwitchDemoApp as the root widget.
void main() {
  runApp(const SwitchDemoApp());
}

// The root widget
class SwitchDemoApp extends StatefulWidget {
  const SwitchDemoApp({super.key});

  @override
  State<SwitchDemoApp> createState() => _SwitchDemoAppState();
}

class _SwitchDemoAppState extends State<SwitchDemoApp> {
  bool _isDarkTheme = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Switch Widget Demo',
      debugShowCheckedModeBanner: false,

      // How the app looks in light mode.
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),

      // How the app looks in dark mode.
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.indigo,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),

      // Picks light or dark based on _isDarkTheme variable.
      themeMode: _isDarkTheme ? ThemeMode.dark : ThemeMode.light,

      // Builder gives a context that knows the current theme 
      home: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Switch Widget Demo'),
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            ),

            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    _isDarkTheme
                        ? 'This is dark theme.'
                        : 'This is light theme.',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),

                  const SizedBox(height: 24),

                  Switch(
                    value: _isDarkTheme,
                    onChanged: (bool value) {
                      setState(() {
                        _isDarkTheme = value;
                      });
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
