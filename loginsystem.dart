// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginSystem extends StatefulWidget {
  const LoginSystem({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginSystemState createState() => _LoginSystemState();
}

class _LoginSystemState extends State<LoginSystem> {
  // ignore: non_constant_identifier_names
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        title: const Text("Halaman Login"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(
          vertical: 25,
          horizontal: 25,
        ),
        color: Colors.purple.shade200,
        // ignore: sort_child_properties_last
        child: Form(
          child: Column(
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: Icon(
                    Icons.person,
                    size: 50,
                    color: Colors.purple,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Welcome to My Sistem! Please Login Email and Password Below!",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    prefixIcon: Icon(
                      Icons.person,
                      size: 30,
                    ),
                    hintText: "Masukkan Username",
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    labelText: "Username",
                    labelStyle: TextStyle(color: Colors.black)),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    prefixIcon: Icon(
                      Icons.note_add,
                      size: 30,
                    ),
                    hintText: "Masukkan Nama Panggilan",
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    labelText: "Nama Panggilan",
                    labelStyle: TextStyle(color: Colors.black)),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                      size: 30,
                    ),
                    hintText: "Masukkan Password",
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.black)),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    prefixIcon: Icon(
                      Icons.book_online,
                      size: 30,
                    ),
                    hintText: "Masukkan Confirmation Password",
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    labelText: "Confirmation Password",
                    labelStyle: TextStyle(color: Colors.black)),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/start');
                },
                child: Text(
                  'Silahkan Login dan Terima Kasih!',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
