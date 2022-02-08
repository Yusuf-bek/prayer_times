import 'package:flutter/material.dart';
import 'package:prayertimes/screens/apps/hadis/hadis_page.dart';
import 'package:prayertimes/screens/apps/musxaf/musxaf_page.dart';
import 'package:prayertimes/screens/apps/zikr/zikr_page.dart';
import 'package:prayertimes/screens/apps_page/apps_page.dart';
import 'package:prayertimes/screens/home_page/home_page.dart';
import 'package:prayertimes/screens/settings/settings_page.dart';

class GenerateRouter {
  static generateRoute(RouteSettings settings) {
    final _arguments = settings.arguments;

    switch (settings.name) {
      case "/musxafpage":
        return MaterialPageRoute(
          builder: (context) => const MusxafPage(),
        );
      case "/hadispage":
        return MaterialPageRoute(
          builder: (context) => const HadisPage(),
        );
      
      case "/zikrpage":
        return MaterialPageRoute(
          builder: (context) => const ZikrPage(),
        );
       case "/settingspage":
        return MaterialPageRoute(
          builder: (context) => const SettingsPage(),
        );
      
       case "/":
        return MaterialPageRoute(
          builder: (context)  => const PrayerTimes(),
          
        );

      case "/appspage":
        return MaterialPageRoute(
          builder: (context) => const AppsPage(),
        );

    }
  }
}
