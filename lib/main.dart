import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kelipatan 5',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: KelipatanPage(),
    );
  }
}

class KelipatanPage extends StatefulWidget {
  @override
  HasilKelipatan createState() => HasilKelipatan();
}

class HasilKelipatan extends State<KelipatanPage> {
  int currentNumber = 0;

  void pencet() {
    setState(() {
      if (currentNumber + 5 <= 30) {
        currentNumber += 5;
      } else {
        currentNumber = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    int kelipatan = currentNumber;

    return Scaffold(
      appBar: AppBar(
        title: Text('Nama Muhammad Raafi Ramadhan - 19 Ganjil'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hasil angka Kelipatan 5: $kelipatan',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => pencet(),
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}
