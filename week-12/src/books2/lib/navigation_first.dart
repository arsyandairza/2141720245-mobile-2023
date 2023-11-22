import 'package:books2/navigation_second.dart';
import 'package:flutter/material.dart';

class NavigationFirst extends StatefulWidget {
  const NavigationFirst({super.key});
  @override
  State<NavigationFirst> createState() => _NavigationFirstState();
}
class _NavigationFirstState extends State<NavigationFirst> {
  Color color = const Color.fromARGB(255, 210, 210, 25);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text("Navigation First Screen Irzaaa"),
      ),
      body: Center(
        child: ElevatedButton(
            child: const Text('Change color'),
            onPressed: () {
              _navigateAndGetColor(context);
            }),
      ),
    );
  }

  Future _navigateAndGetColor(BuildContext context) async {
    color = await Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const NavigationSecond()),
        ) ??
        Colors.blue;
    setState(() {});
  }
}