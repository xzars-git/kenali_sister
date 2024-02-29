import 'package:kenali_sister/core.dart';
import 'package:flutter/material.dart';

Future showInfoDialog(String message) async {
  await showDialog<void>(
    context: globalContext,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return Focus(
        autofocus: true,
        child: AlertDialog(
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 16.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24.0,
                      ),
                      child: Text(
                        'Info',
                        style: myTextTheme.headlineLarge?.copyWith(
                          color: yellow700,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 32.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24.0,
                      ),
                      child: Text(
                        message,
                        style: myTextTheme.bodyLarge?.copyWith(
                          color: gray900,
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
                      child: PrimaryButton(
                        onPressed: () {
                          Get.back();
                        },
                        text: "OK",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
}
