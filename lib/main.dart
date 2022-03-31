// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_assignment2/Cfonts.dart';
import 'package:flutter_assignment2/inputValid.dart';
import 'package:flutter_assignment2/localize.dart';
import 'package:flutter_assignment2/lottie.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Languages(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      debugShowCheckedModeBanner: false,
      title: 'Assignment 5 ',
      theme: ThemeData(
        primarySwatch: Colors.red,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shadowColor: const Color.fromARGB(83, 46, 14, 24),
            elevation: 2,
            alignment: Alignment.center,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
            ),
          ),
        ),
        textTheme: GoogleFonts.elMessiriTextTheme(
          Theme.of(context).textTheme.apply(),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/inputValidPage': (context) => InputValid(),
        '/localizepage': (context) => const Localize(),
        '/cfontsPage': (context) => const Cfonts(),
        '/lottiePage': (context) => const LottieAnim(),
      },
      home: const Index(),
    );
  }
}

class Index extends StatelessWidget {
  const Index({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      color: Colors.red,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Assignment 5 ',
            ),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/inputValidPage");
                      },
                      child: Container(
                        color: Colors.amber,
                        height: 100,
                        width: (size.width / 2) - 10,
                        child: const Center(child: Text("Input & Validation")),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/localizepage");
                      },
                      child: Container(
                        color: Colors.amber,
                        height: 100,
                        width: (size.width / 2) - 10,
                        child: const Center(child: Text("Localization")),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                        onTap: () {
                            Navigator.pushNamed(context, "/cfontsPage");
                        },
                      child: Container(
                        color: Colors.amber,
                        height: 100,
                        width: (size.width / 2) - 10,
                        child: const Center(child: Text("Custom Fonts")),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/lottiePage");
                      },
                      child: Container(
                        color: Colors.amber,
                        height: 100,
                        width: (size.width / 2) - 10,
                        child: const Center(child: Text("Lottie")),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: (size.height) / 2,
                ),
                const Text(
                    "* responsive design, Router Navigation & pre-defined theme with animation"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
