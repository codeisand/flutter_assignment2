// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Cfonts extends StatelessWidget {
  const Cfonts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'custom font',
          ),
          centerTitle: true,
        ),
        body: const Center(
            child: Text(
          "Welcome to CodeiSanD",
          style: TextStyle(
              fontFamily: 'cr',
              fontSize: 30,
              letterSpacing: 2,
              color: Colors.red),
        )),
      ),
    );
  }
}
