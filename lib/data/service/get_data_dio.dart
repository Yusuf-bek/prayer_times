import 'package:dio/dio.dart';
import 'package:prayertimes/core/constants/api_path.dart';
import 'package:prayertimes/data/model/service_model.dart';

class GetData {
  String regionName;
  GetData(this.regionName);

  Future<List<ModelApi>?> dataReturn() async {
    Response prayerTimes = await Dio().get(MyApiPath.generatePath(regionName));

    List<ModelApi> modelledData = [];
    for (var i in prayerTimes.data) {
      modelledData.add(ModelApi.fromJson(i));
    }

    return sortDataList(modelledData);
  }

  List<ModelApi> sortDataList(List<ModelApi> dataList) {
    int lengthList = dataList.length;

    ModelApi helperModel;

    for (int i = 0; i < lengthList - 1; i++) {
      for (int j = i + 1; j < lengthList; j++) {
        if (dataList[i].day! > dataList[j].day!) {
          helperModel = dataList[i];
          dataList[i] = dataList[j];
          dataList[j] = helperModel;
        }
      }
    }
    return dataList;
  }
}
