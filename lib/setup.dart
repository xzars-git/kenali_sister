import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kenali_sister/core.dart';
import 'package:path_provider/path_provider.dart';

Future initialize() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (!kIsWeb) {
    var path = await getTemporaryDirectory();
    Hive.init(path.path);
  }

  // if (!Hive.isAdapterRegistered(1)) {
  //   Hive.registerAdapter(KodeFungsiResultAdapter());
  //   Hive.registerAdapter(KodeJenisResultAdapter());
  //   Hive.registerAdapter(KodeMohonResultAdapter());
  //   Hive.registerAdapter(KodeSamsatResultAdapter());

  // }

  // mainStorage = await Hive.openBox('mainStorage');

  // await UserDatabase.load();
  // await DeviceDatabase.load();
  // await IpDatabase.load();
  // // await SettingDatabase.load();

  // AppSession.token = mainStorage.get("token") ?? "";
  // UserDatabase.id = await mainStorage.get("id") ?? "";
  // SettingDatabase.numberQris = await mainStorage.get("numberQris") ?? 1;
  // SettingDatabase.numberVa = await mainStorage.get("numberVa") ?? 1;
  // SettingDatabase.numberTunai = await mainStorage.get("numberTunai") ?? 1;
  // SettingDatabase.numberNppkb = await mainStorage.get("numberNppkb") ?? 1;
  // IpDatabase.ip = await mainStorage.get("ip") ?? "";
  // IpDatabase.port = await mainStorage.get("port") ?? "";
}
