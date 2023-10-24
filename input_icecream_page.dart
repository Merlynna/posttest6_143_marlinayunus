// ignore_for_file: unused_import, library_private_types_in_public_api, prefer_const_constructors, sized_box_for_whitespace
import "package:flutter/material.dart";

class InputDataAccess extends StatelessWidget {
  const InputDataAccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeAccess(),
    );
  }
}

class HomeAccess extends StatefulWidget {
  const HomeAccess({Key? key}) : super(key: key);

  @override
  _HomeAccessState createState() => _HomeAccessState();
}

class _HomeAccessState extends State<HomeAccess> {
  late String kode;
  late String nama;
  late String perasa;

  // Pendataan String
  String text0 = "No Code Entered";
  String text1 = "No Value Entered";
  String text2 = "No Value Entered";

  void _setText() {
    setState(() {
      text0 = kode;
      text1 = nama;
      text2 = perasa;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Data Inputan'),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),
        body: Container(
          width: double.infinity,
          height: 1000,
          color: Colors.purple.shade100,
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextField(
                  decoration: const InputDecoration(
                    labelText: 'Kode ID',
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple),
                    ),
                    prefixIcon: Icon(
                      Icons.code,
                      size: 30,
                    ),
                    hintText: "Inputkan Kode ID Anda",
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  onChanged: (value) => kode = value,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextField(
                  decoration: const InputDecoration(
                    labelText: 'Nama',
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple),
                    ),
                    prefixIcon: Icon(
                      Icons.woman_2_rounded,
                      size: 30,
                    ),
                    hintText: "Masukkan Nama Anda",
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  onChanged: (value) => nama = value,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextField(
                  decoration: const InputDecoration(
                    labelText: 'Varian Perasa',
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple),
                    ),
                    prefixIcon: Icon(
                      Icons.book,
                      size: 20,
                      color: Colors.purple,
                    ),
                    hintText: "Masukkan Perasa Pilihan Anda",
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  onChanged: (value) => perasa = value,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: _setText,
                  style: ButtonStyle(
                      elevation: MaterialStateProperty.all(8),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.purple)),
                  child: const Text('Submit Answers')),
              SizedBox(
                height: 20,
              ),
              const Text("Kode ID : "),
              Text(text0),
              SizedBox(
                height: 20,
              ),
              const Text("Nama : "),
              Text(text1),
              SizedBox(
                height: 20,
              ),
              const Text("Perasa Pilihan : "),
              Text(text2),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ButtonStyle(
                      elevation: MaterialStateProperty.all(8),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.purple)),
                  child: const Text('Keluar')),
            ],
          ),
        ));
  }
}
