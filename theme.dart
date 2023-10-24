// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ThemeScreen extends StatelessWidget {
  const ThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future<dynamic> alert(BuildContext context, String judul, String konten) {
      return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(judul),
            content: Text(konten),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Cancel"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Okay"),
              ),
            ],
          );
        },
      );
    }

    final mySnackBar = SnackBar(
      content: Text("Ini adalah sebuah Snackbar."),
      duration: Duration(
        seconds: 3,
      ),
      padding: EdgeInsets.all(10),
      backgroundColor: Theme.of(context).colorScheme.secondary,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Marlina Yunus'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Headline Large',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            SizedBox(height: 20),
            Text('Body Large', style: Theme.of(context).textTheme.bodyLarge),
            Text('Body Medium', style: Theme.of(context).textTheme.bodyMedium),
            Text('Body Small', style: Theme.of(context).textTheme.bodySmall),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(mySnackBar);
              },
              child: Text('Show SnackBar'),
            ),
            SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                alert(
                    context, "Alert Dialog Ajalah", "Ini adalah Alert Dialog.");
              },
              child: Text('Show Alert Dialog'),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {},
              child: Text('Text Button'),
            ),
          ],
        ),
      ),
    );
  }
}
