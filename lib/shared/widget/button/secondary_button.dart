import 'package:flutter/material.dart';
import 'package:kenali_sister/core.dart';

class SecondaryButton extends StatefulWidget {
  final Function()? onPressed;
  final String? text;
  final String? pathIcon;

  const SecondaryButton({
    Key? key,
    required this.onPressed,
    this.text,
    this.pathIcon,
  }) : super(key: key);

  @override
  State<SecondaryButton> createState() => _SecondaryButtonState();
}

class _SecondaryButtonState extends State<SecondaryButton> {
  bool onHover = false;
  @override
  Widget build(BuildContext context) {
    Color textColor = widget.onPressed != null
        ? onHover
            ? neutralWhite
            : yellow700
        : gray400;
    return Container(
      constraints: const BoxConstraints(
        maxHeight: 40,
      ),
      width: MediaQuery.of(context).size.width,
      child: OutlinedButton(
        style: ButtonStyle(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          backgroundColor: MaterialStateProperty.all<Color>(neutralWhite),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          side: MaterialStateProperty.all<BorderSide>(
            BorderSide(
              color: widget.onPressed != null ? yellow700 : gray400,
            ),
          ),
          overlayColor: MaterialStateProperty.all<Color>(yellow900),
        ),
        onFocusChange: (value) {
          setState(
            () {
              onHover = value;
            },
          );
        },
        onHover: (value) {
          setState(
            () {
              onHover = value;
            },
          );
        },
        onPressed: widget.onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              trimString(widget.text).isNotEmpty
                  ? Text(
                      trimString(widget.text),
                      style: myTextTheme.titleSmall?.copyWith(
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
