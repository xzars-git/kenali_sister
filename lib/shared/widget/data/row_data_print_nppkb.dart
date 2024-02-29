// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:kenali_sister/core.dart';

class RowDataPrintNppkb extends StatefulWidget {
  final String title;
  final String subtitle;

  const RowDataPrintNppkb({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  State<RowDataPrintNppkb> createState() => _RowDataPrintNppkbState();
}

class _RowDataPrintNppkbState extends State<RowDataPrintNppkb> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Text(
            widget.title,
            style: myTextTheme.bodyLarge?.copyWith(
              color: gray900,
              height: 1.5,
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ":",
                style: myTextTheme.bodyLarge?.copyWith(
                  color: gray900,
                  height: 1.5,
                ),
              ),
              const SizedBox(
                width: 4.0,
              ),
              Expanded(
                child: Text(
                  widget.subtitle,
                  style: myTextTheme.bodyLarge?.copyWith(
                    color: gray900,
                    height: 1.5,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
