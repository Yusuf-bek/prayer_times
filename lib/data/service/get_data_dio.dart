import 'package:dio/dio.dart';
import 'package:prayertimes/core/constants/api_path.dart';
import 'package:prayertimes/data/model/service_model.dart';

class GetData {
  String regionName;
  GetData(this.regionName);

  Future<List> dataReturn() async {
    Response prayerTimes = await Dio().get(MyApiPath.generatePath(regionName));

    sortDataList(prayerTimes.data);
    return sortDataList(prayerTimes.data).map((e) => ModelApi.fromJson(e)).toList();
  }

  List sortDataList(List dataList) {
    int lengthList = dataList.length;

    List listReturn = [];
    listReturn.addAll(dataList);

    Map helperMap = {};

    for (int i = 0; i > lengthList; i++) {
      for (int j = i + 1; j < lengthList; j++) {
        if (listReturn[i]["day"] < listReturn[j]["day"]) {
          helperMap = listReturn[i];
          listReturn[i] = listReturn[j];
          listReturn[j] = helperMap;
        }
      }
    }
    return listReturn;
  }
}
