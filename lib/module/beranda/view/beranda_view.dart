import 'package:flutter/material.dart';
import 'package:kenali_sister/core.dart';

class BerandaView extends StatefulWidget {
  const BerandaView({Key? key}) : super(key: key);

  Widget build(context, BerandaController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Beranda"),
        actions: const [],
      ),
      body: ScreenTypeLayout.builder(
        mobile: (BuildContext context) => const ContainerBody(
          child: Column(
            children: [Text("mobile")],
          ),
        ),
        desktop: (BuildContext context) => const ContainerBody(
          child: Column(
            children: [Text("desktop")],
          ),
        ),
      ),
    );
  }

  @override
  State<BerandaView> createState() => BerandaController();
}
