import 'package:flutter/material.dart';
import 'package:kenali_sister/core.dart';

class SplashscreenView extends StatefulWidget {
  const SplashscreenView({Key? key}) : super(key: key);

  Widget build(context, SplashscreenController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Splashscreen"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {},
                child: const Text("Beranda"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<SplashscreenView> createState() => SplashscreenController();
}
