import 'package:auto_size_text/auto_size_text.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:prayertimes/core/constants/regions.dart';
import 'package:prayertimes/data/model/service_model.dart';
import 'package:prayertimes/data/service/hive_service.dart';

class HomePageMainParts {
  ModelApi? prayerTimes;
  HomePageMainParts(this.prayerTimes);

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
                "Uzbekistan/" + myRegions[choosenRegionIndex],
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
                HiveService.updateData();
                
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
      child: Column(children: [
        prayerTimeShowContainer(
          context,
          name: "Bomdod",
          prayerTime: prayerTimes!.times!.tongSaharlik,
        ),
        prayerTimeShowContainer(
          context,
          name: "Peshin",
          prayerTime: prayerTimes!.times!.peshin,
        ),

        prayerTimeShowContainer(
          context,
          name: "Asr",
          prayerTime: prayerTimes!.times!.asr,
        ),

        prayerTimeShowContainer(
          context,
          name: "Shom",
          prayerTime: prayerTimes!.times!.shomIftor,
        ),

        prayerTimeShowContainer(
          context,
          name: "Hufton",
          prayerTime: prayerTimes!.times!.hufton,
        ),

      ]),
    );
  }

  Container prayerTimeShowContainer(context,
      {String? name, String? prayerTime}) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width * 0.6,
      height: MediaQuery.of(context).size.height * 0.1,
      child: Center(
        child: Text(
          name! + " : " + prayerTime!,
          style: TextStyle(

            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: MediaQuery.of(context).size.width * 0.065,
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.green.withOpacity(0.44),
        border: Border.all(width: 0.5, color: Colors.white),
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
