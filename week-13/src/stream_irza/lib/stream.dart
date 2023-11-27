import 'package:flutter/material.dart';
import 'dart:async';

class NumberStream {
  final StreamController<int> controller = StreamController<int>();
  Future<void> addNumberToSink(int newNumber) async {
    controller.add(newNumber);
  }
  void close() {
    controller.close();
  }
}

class ColorStream {
  final List<Color> colors = [
    Colors.white,
  ];

  Stream<Color> getColors() async* {
    yield* Stream.periodic(
      const Duration(seconds: 1),
      (int t) {
        int index = t % colors.length;
        return colors[index];
      },
    );
  }
}
