import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  List<int> numbers = [];
  void onAdd() {
    setState(() {
      numbers.add(numbers.length);
    });
  }

  void onSubtract() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFF3eDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Click Count',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              for (var n in numbers)
                Text(
                  '$n',
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    iconSize: 40,
                    onPressed: onAdd,
                    icon: const Icon(
                      Icons.add_box_rounded,
                    ),
                  ),
                  IconButton(
                    iconSize: 40,
                    onPressed: onSubtract,
                    icon: const Icon(
                      Icons.minimize_outlined,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
