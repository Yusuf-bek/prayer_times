import 'dart:io';

import 'package:hive/hive.dart';
import 'package:prayertimes/core/constants/regions.dart';
import 'package:prayertimes/data/model/service_model.dart';
import 'package:path_provider/path_provider.dart';
import 'package:prayertimes/data/service/get_data_dio.dart';

class HiveService {
  static Box<ModelApi>? myBox;

  static Future initializHive() async {
    Directory dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);
    myBox = await Hive.openBox("apidata");
  }

  static Future<Box<ModelApi>?> writeGetAllData() async {
    await initializHive();
    await myBox!.clear();

    await GetData(myRegions[choosenRegionIndex]).dataReturn().then((value) {
      for (ModelApi i in value) {
        myBox!.add(i);
      }
    });

    return myBox;
  }

  static regsterAllAdapters() {
    Hive.registerAdapter(ModelApiAdapter());
    Hive.registerAdapter(TimesAdapter());
  }
}
