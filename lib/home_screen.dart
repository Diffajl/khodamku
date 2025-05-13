import 'dart:math';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _name = TextEditingController();
  String _khodam = "";

  final List<String> _listKhodam = [
    "Nyi Blorong",
    "Singa Introvert",
    "Undur2",
    "Joker",
    "Banteng Merah",
    "Sandal Jepit",
    "Bebek Sumbing",
    "Macan Putih",
    "Rawa Rontek",
    "Tuyul Mulet",
    "Tikus Got",
    "Helikopter",
    "Ultramen Pink",
    "Kadal Eropa",
    "Spion Mobil",
    "Musang Sad",
    "Zebra Sigma",
    "Jupiter Kopling",
    "Badut",
    "Roger Sumatra",
  ];

  void _generateKhodam() {
    final random = Random();
    int indexKhodam = random.nextInt(_listKhodam.length);

    if(_name.text.isEmpty) return;

    setState(() {
      _khodam = _listKhodam[indexKhodam];
    });

    _name.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: const Text(
                "CEK KHODAM ANDA!",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: TextField(
                controller: _name,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.blue),
                    ) ,
                  hintText: "Masukan nama anda"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                onPressed: _generateKhodam,
                child: const Text(
                  "Cek khodam",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16
                  ),
                )
              ),
            ),
        
            if (_khodam != "")
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Khodam anda ${_khodam}",
                style: TextStyle(
                  fontSize: 24
                ),
              ),
            )
            else
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                "Belum ada khodam",
                style: TextStyle(
                  fontSize: 24
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: const Text(
        "KhodamKu",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 32
        ),
      ),
    );
  }
}