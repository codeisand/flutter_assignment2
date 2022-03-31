// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Localize extends StatelessWidget {
  const Localize({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Localize',
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                'app'.tr,
                style: const TextStyle(fontSize: 40),
              ),
              Text(
                'app_title'.tr,
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Get.updateLocale(
                        const Locale('en', 'US'),
                      );
                    },
                    child: const Text("English"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Get.updateLocale(
                        const Locale('bn', 'IN'),
                      );
                    },
                    child: const Text("Bangla"),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': eng,
        'bn_IN': ban,
      };
}

Map<String, String> ban = {
  "app": "ডেমো প্রকল্প",
  "app_title": "এটি ভাষার জন্য একটি ডেমো প্রকল্প",
};

Map<String, String> eng = {
  "app": "Demo Project",
  "app_title": "This is a demo project for languages",
};
