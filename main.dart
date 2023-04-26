
import 'package:flutter/material.dart';
import 'settings.dart';
import 'settings_sound.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => const Main(),
      '/settings': (context) => const Settings(),
      '/settings_sound': (context) => const SettingsSound(),
    },
  ));
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key : key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('MAIN PAGE'),
              TextButton.icon(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                  foregroundColor: MaterialStateProperty.all(Colors.white)
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/settings');
                },
                icon: const Icon(Icons.settings),
                label: const Text('Перейти в настройки'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
