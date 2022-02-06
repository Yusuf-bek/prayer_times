import 'package:flutter/material.dart';
import 'package:prayertimes/core/constants/asset_image_paths.dart';
import 'package:prayertimes/data/service/get_data_dio.dart';
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
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HomePageMainParts().getFirstPart(context),
            HomePageMainParts().getSeondPart(context),
          ],
        ),
        decoration:  BoxDecoration(
          color: Colors.transparent,
          image: DecorationImage(
            image: AssetImage(asssetImagePaths[currentImageIndex]),
            fit: BoxFit.cover,
          ),
        ),
      ),
     
    );
  }
}
