import 'package:flutter/material.dart';
import 'package:prayertimes/screens/apps_page/apps_page.dart';
import 'package:prayertimes/screens/home_page/home_page.dart';
import 'package:prayertimes/screens/search_page/search_page.dart';

class GenerateRouter {
  static generateRoute(RouteSettings settings) {
    final _arguments = settings.arguments;

    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (context)  => const PrayerTimes(),
          
        );

      case "/appspage":
        return MaterialPageRoute(
          builder: (context) => const AppsPage(),
        );

      case "/searchpage":
        return MaterialPageRoute(
          builder: (context) => const SearchPage(),
        );
      

    }
  }
}
