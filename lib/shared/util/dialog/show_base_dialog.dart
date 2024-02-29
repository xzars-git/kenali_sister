import 'package:kenali_sister/core.dart';
import 'package:flutter/material.dart';

Future showBaseDialog({
  String? title,
  String? pathIconMessage,
  required String message,
  Function()? onPressedRight,
  Function()? onPressedLeft,
  Function()? onPressed,
  String? textSecondary,
  String? pathIconSecondary,
  String? textPrimary,
  String? pathIconPrimary,
  String? pathIconButton,
  String? text,
  bool? barrierDismissible,
}) async {
  await showDialog<void>(
    context: globalContext,
    barrierDismissible: barrierDismissible ?? false,
    builder: (BuildContext context) {
      return AlertDialog(
        contentPadding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        content: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 450,
          ),
          child: DynMouseScroll(
            scrollSpeed: 60,
            builder: (context, scrollController, physics) =>
                SingleChildScrollView(
              controller: scrollController,
              child: Column(
                crossAxisAlignment: trimString(title).isNotEmpty
                    ? CrossAxisAlignment.start
                    : CrossAxisAlignment.center,
                children: [
                  trimString(title).isNotEmpty
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 24.0,
                                vertical: 16,
                              ),
                              child: Text(
                                trimString(title),
                                style: myTextTheme.headlineLarge?.copyWith(
                                  color: yellow700,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        )
                      : Container(),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24.0,
                    ),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment:
                            trimString(pathIconMessage).isNotEmpty
                                ? CrossAxisAlignment.center
                                : CrossAxisAlignment.start,
                        children: [
                          trimString(pathIconMessage).isNotEmpty
                              ? SvgPicture.asset(
                                  trimString(pathIconMessage),
                                )
                              : Container(),
                          trimString(pathIconMessage).isNotEmpty
                              ? const SizedBox(
                                  height: 16.0,
                                )
                              : Container(),
                          Text(
                            trimString(message),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: const BoxDecoration(
                        color: gray50,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(
                            8,
                          ),
                          bottomRight: Radius.circular(
                            8,
                          ),
                        )),
                    child: Column(
                      children: [
                        onPressedLeft != null
                            ? Row(
                                children: [
                                  Expanded(
                                    child: SecondaryButton(
                                      onPressed: onPressedLeft,
                                      text: textSecondary,
                                      pathIcon: pathIconSecondary,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8.0,
                                  ),
                                  Expanded(
                                    child: PrimaryButton(
                                      onPressed: onPressedRight,
                                      text: textPrimary,
                                      pathIcon: pathIconPrimary,
                                    ),
                                  ),
                                ],
                              )
                            : PrimaryButton(
                                text: text,
                                onPressed: onPressed,
                                pathIcon: pathIconButton,
                              ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}
