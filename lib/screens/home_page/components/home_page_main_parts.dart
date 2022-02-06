import 'package:auto_size_text/auto_size_text.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:prayertimes/core/constants/regions.dart';
import 'package:prayertimes/data/database/lagmondata.dart';
import 'package:prayertimes/data/model/service_model.dart';
import 'package:prayertimes/data/service/get_data_dio.dart';

class HomePageMainParts {
  getFirstPart(context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/appspage");
            },
            icon: const Icon(
              Icons.apps,
              color: Colors.white,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            height: MediaQuery.of(context).size.height * 0.05,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.green.withOpacity(0.2),
              border: Border.all(width: 0.5, color: Colors.white),
            ),
            child: Center(
              child: AutoSizeText(
                addressTimeZones,
                softWrap: true,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.width * 0.05),
              ),
            ),
          ),
          IconButton(
            onPressed: () async {
              Enum internetconnectivity =
                  await (Connectivity().checkConnectivity());

              if (internetconnectivity == ConnectivityResult.mobile ||
                  internetconnectivity == ConnectivityResult.ethernet) {
                List<ModelApi>? myData =
                    await GetData(myRegions[choosenRegionIndex])
                        .dataReturn()
                        .then(
                  (value) {
                    print(value);
                  },
                );
              } else {
                showAlertDialog(context);
              }
            },
            icon: const Icon(
              Icons.refresh,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  getSeondPart(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.6,
      height: MediaQuery.of(context).size.height * 0.7,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width * 0.6,
            height: MediaQuery.of(context).size.height * 0.1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.green.withOpacity(0.2),
              border: Border.all(width: 0.5, color: Colors.white),
            ),
          );
        },
        itemCount: 5,
      ),
    );
  }

  showAlertDialog(context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("!"),
            content: const Text("You do not have internet connection"),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Ok"))
            ],
          );
        });
  }
}
