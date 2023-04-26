import 'package:assi1/main.dart';
import 'package:flutter/material.dart';

class SettingsSound extends StatelessWidget {
  const SettingsSound({Key? key}) : super(key : key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 239, 168),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('SETTINGS SOUND PAGE'),
              TextButton.icon(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                    foregroundColor: MaterialStateProperty.all(Colors.white)
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios_new),
                label: const Text('Вернуться назад'),
              ),
              TextButton.icon(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                    foregroundColor: MaterialStateProperty.all(Colors.white)
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) {
                            return const Main();
                          }
                      )
                  );
                },
                icon: const Icon(Icons.keyboard_voice_sharp),
                label: const Text('Вернуться на главную'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
