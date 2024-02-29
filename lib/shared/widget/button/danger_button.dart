// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:kenali_sister/core.dart';

class DangerButton extends StatefulWidget {
  final Function()? onPressed;
  final String? text;
  final String? pathIcon;

  const DangerButton({
    Key? key,
    required this.onPressed,
    this.text,
    this.pathIcon,
  }) : super(key: key);

  @override
  State<DangerButton> createState() => _DangerButtonState();
}

class _DangerButtonState extends State<DangerButton> {
  @override
  Widget build(BuildContext context) {
    Color textColor = widget.onPressed != null ? neutralBlack : neutralWhite;
    return Container(
      constraints: const BoxConstraints(
        maxHeight: 40,
      ),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: widget.onPressed != null
              ? const MaterialStatePropertyAll(red500)
              : const MaterialStatePropertyAll(gray400),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          overlayColor: MaterialStateProperty.all<Color>(red900),
        ),
        onPressed: widget.onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              trimString(widget.text).isNotEmpty
                  ? Text(
                      trimString(widget.text),
                      style: myTextTheme.titleMedium?.copyWith(
                        color: textColor,
                      ),
                    )
                  : Container(),
              const SizedBox(
                width: 8.0,
              ),
              trimString(widget.pathIcon).isNotEmpty
                  ? SvgPicture.asset(
                      trimString(widget.pathIcon),
                      color: textColor,
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
