// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAnim extends StatelessWidget {
  const LottieAnim({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Lottie',
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Lottie.network(
              'https://assets6.lottiefiles.com/packages/lf20_ueodl5lw.json'),
        ),
      ),
    );
  }
}
