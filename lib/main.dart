import 'package:flutter/material.dart';

import 'core.dart';

void main() async {
  await initialize();
  await loadSVG();

  Get.mainTheme.value = getDefaultTheme();

  runMainApp();
}

runMainApp() async {
  return runApp(
    const MainApp(),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Get.mainTheme,
      builder: (context, value, child) {
        return MaterialApp(
          title: 'Kenali Sister',
          debugShowCheckedModeBanner: false,
          theme: value,
          localizationsDelegates: GlobalMaterialLocalizations.delegates,
          supportedLocales: const [
            Locale('id', 'ID'),
          ],
          home: const SplashscreenView(),
        );
      },
    );
  }
}
