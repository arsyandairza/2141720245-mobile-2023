## Nama : Arsyanda Irza Rabbani Yuardhino (06)
## NIM : 2141720245
## Kelas : 3F

<br>
<br>

# Week 13 - Lanjutan State Management dengan Streams

### Praktikum 1: Dart Streams


**Soal 1**

- Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.
- Gantilah warna tema aplikasi sesuai kesukaan Anda.
- Lakukan commit hasil jawaban Soal 1 dengan pesan "W13: Jawaban Soal 1"

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream Irzaa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StreamHomePage(),
    );
  }
}

class StreamHomePage extends StatefulWidget {
  const StreamHomePage({super.key});

  @override
  State<StreamHomePage> createState() => _StreamHomePageState();
}

class _StreamHomePageState extends State<StreamHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

```
**Soal 2**

- Tambahkan 5 warna lainnya sesuai keinginan Anda pada variabel colors tersebut.
- Lakukan commit hasil jawaban Soal 2 dengan pesan "W13: Jawaban Soal 2"

```dart
import 'package:flutter/material.dart';

class ColorStream {
  final List<Color> colors = [
  Colors.red,
  Colors.yellow,
  Colors.blue,
  Colors.green,
  Colors.teal,
];

}

```

**Soal 3**

- Jelaskan fungsi keyword yield* pada kode tersebut!
> Keyword 'yield*' digunakan dalam metode getColors() dari kelas ColorStream untuk mendelegasikan pembuatan warna ke generator lain. 'yield*' digunakan untuk mendelegasikan pembuatan warna ke generator Stream.periodic().

- Apa maksud isi perintah kode tersebut?
> Untuk menjelaskan fungsi keyword yield* pada kode yang diberikan. Kode tersebut mendefinisikan kelas ColorStream yang memiliki metode getColors(). Metode getColors() menghasilkan aliran warna yang berubah setiap detik. Warna yang dihasilkan dipilih dari daftar warna yang disimpan dalam properti colors.

**Soal 4**

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.

<img src= "docs/soal4.gif">

**Soal 5**

- Jelaskan perbedaan menggunakan listen dan await for (langkah 9) !
> 'await' digunakan untuk mengambil nilai asinkron secara berurutan dalam suatu loop, sementara 'listen' digunakan untuk mendaftarkan fungsi yang akan dipanggil setiap kali ada perubahan dalam stream tanpa menghentikan eksekusi program.

- Lakukan commit hasil jawaban Soal 5 dengan pesan "W13: Jawaban Soal 5"