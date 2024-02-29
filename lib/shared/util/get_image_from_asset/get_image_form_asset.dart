import 'package:flutter/services.dart';
import 'package:kenali_sister/core.dart';

Future<Uint8List> getImageFromAsset(String iconPath) async {
  return await readFileBytes(iconPath);
}
