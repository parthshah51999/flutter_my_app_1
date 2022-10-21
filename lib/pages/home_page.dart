import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const days = 30;

    return Scaffold(
      appBar: AppBar(
        title: Text("My Application"),
      ),
      body: Center(
        child: Container(
          child: Text("$days days of flutter"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
