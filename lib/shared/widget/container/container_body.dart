// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:kenali_sister/core.dart';

class ContainerBody extends StatefulWidget {
  final Widget child;

  const ContainerBody({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  State<ContainerBody> createState() => _ContainerBodyState();
}

class _ContainerBodyState extends State<ContainerBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width / 2,
            height: MediaQuery.of(context).size.height - 88,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: neutralWhite,
            ),
            padding: const EdgeInsets.all(16.0),
            child: widget.child,
          ),
        ),
      ),
    );
  }
}
