import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: CounterPage());
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Page'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                setState(() {});
              },
              child: const Icon(Icons.remove)),
              const SizedBox(width: 20),
              Text('Nilai Counter: $_counter'),
              const SizedBox(width: 20),
              InkWell(
                onTap: (){
                  _counter++;
                  setState(() {});
                },
                child: const Icon(Icons.add)),
          ],
        ),
      ),
    );
  }
}

// Analasis Terhadap SETSTATE
// 1. SETSTATE digunakan untuk mengubah nilai state yang telah diinisialisasi
// 2. SETSTATE akan memanggil fungsi build() kembali untuk memperbar
// 3. SETSTATE dapat digunakan untuk mengubah nilai state yang telah diinisialisasi
//APA KEGUNAANNYA
// 1. Mengubah nilai state yang telah diinisialisasi
// 2. Memanggil fungsi build() kembali untuk memperbarui UI
