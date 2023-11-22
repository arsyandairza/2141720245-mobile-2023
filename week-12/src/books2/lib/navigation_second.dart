import 'package:flutter/material.dart';

class NavigationSecond extends StatefulWidget {
  const NavigationSecond({super.key});

  @override
  State<NavigationSecond> createState() => _NavigationSecondState();
}

class _NavigationSecondState extends State<NavigationSecond> {
  @override
  Widget build(BuildContext context) {
    Color color;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation Second Screen Irzaaa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Spacer(),
            ElevatedButton(
                onPressed: () {
                  color = Colors.blue.shade700;
                  Navigator.pop(context, color);
                },
                child: const Text("Blue")),
            ElevatedButton(
                onPressed: () {
                  color = Colors.yellow.shade700;
                  Navigator.pop(context, color);
                },
                child: const Text("Yellow")),
            ElevatedButton(
                onPressed: () {
                  color = Colors.pink.shade700;
                  Navigator.pop(context, color);
                },
                child: const Text("Pink")),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}