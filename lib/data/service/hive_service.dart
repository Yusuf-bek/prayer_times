import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:hive/hive.dart';
import 'package:prayertimes/core/constants/regions.dart';
import 'package:prayertimes/data/model/service_model.dart';
import 'package:path_provider/path_provider.dart';
import 'package:prayertimes/data/service/get_data_dio.dart';

class HiveService {
  static Future initializHive() async {
    Directory dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);
    await Hive.openBox("apidata");
  }

  static void updateData() async {
    await initializHive();
    await Hive.box("apidata").clear();

    await GetData(myRegions[choosenRegionIndex]).dataReturn().then((value) {
      Hive.box("apidata").put("apidata", value);
    });
  }

  static Future<ModelApi> getData() async {
    Enum internetconnectivity = await (Connectivity().checkConnectivity());

    if (internetconnectivity == ConnectivityResult.mobile ||
        internetconnectivity == ConnectivityResult.ethernet) {
       updateData();
       await Hive.openBox("apidata");
       return Hive.box("apidata").get("apidata")[DateTime.now().day - 1];

    } else{
    await Hive.openBox("apidata");
    return Hive.box("apidata").get("apidata")[DateTime.now().day - 1];
    }


   
  }

  static regsterAllAdapters() {
    Hive.registerAdapter(ModelApiAdapter());
    Hive.registerAdapter(TimesAdapter());
  }
}
