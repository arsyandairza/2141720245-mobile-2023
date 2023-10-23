import 'package:flutter/material.dart';

class MyLayout extends StatelessWidget {
  const MyLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          showAlertDialog(context);
        },
        child: const Text("Show Alert"),
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    Widget okButton = TextButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: const Text("Close"),
    );

    AlertDialog alert = AlertDialog(
      title: const Text("Note"),
      content: const Text("It's time to rest!"),
      actions: [
        okButton,
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}