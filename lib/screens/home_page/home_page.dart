import 'package:flutter/material.dart';
import 'package:prayertimes/core/constants/asset_image_paths.dart';
import 'package:prayertimes/data/model/service_model.dart';
import 'package:prayertimes/data/service/hive_service.dart';
import 'package:prayertimes/screens/home_page/components/home_page_main_parts.dart';

class PrayerTimes extends StatefulWidget {
  const PrayerTimes({Key? key}) : super(key: key);

  @override
  _PrayerTimesState createState() => _PrayerTimesState();
}

class _PrayerTimesState extends State<PrayerTimes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: HiveService.getData(),
        builder: (context, AsyncSnapshot<ModelApi> snapshot) {
          if (!snapshot.hasData) {
            return const CircularProgressIndicator();
          } else {
            return Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  HomePageMainParts(snapshot.data).getFirstPart(context),
                  HomePageMainParts(snapshot.data).getSeondPart(context),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                  image: AssetImage(asssetImagePaths[currentImageIndex]),
                  fit: BoxFit.cover,
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
