import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internationalization/controller.dart';
import 'package:internationalization/messages.dart';
import 'dart:io' as Platform;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  MyController myController = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: Messages(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      title: "Internationalization",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Internationalization Using GetX"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'hello_key'.tr,
                style: TextStyle(fontSize: 30.0, color: Colors.black),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    myController.changeLanguage('en', 'US');
                  },
                  child: const Text(
                    "English",
                    style: TextStyle(fontSize: 22.0),
                  )),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    myController.changeLanguage('hi', 'IN');
                  },
                  child: const Text(
                    "Hindi",
                    style: TextStyle(fontSize: 22.0),
                  )),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    myController.changeLanguage('fr', 'FR');
                  },
                  child: const Text(
                    "French",
                    style: TextStyle(fontSize: 22.0),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
