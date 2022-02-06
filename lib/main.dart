import 'package:flutter/material.dart';
import 'package:prayertimes/routes/router.dart';
import 'package:prayertimes/screens/home_page/home_page.dart';
import 'package:prayertimes/theme/primary_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NamozVaqtlari',
      theme: MyPrimaryTheme.getPrimaryTheme(),
      home: const PrayerTimes(),
      initialRoute: "/appspage",
      onGenerateRoute: (settings) => GenerateRouter.generateRoute(settings),
    );
  }
}
