import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:prayertimes/data/service/hive_service.dart';
import 'package:prayertimes/routes/router.dart';
import 'package:prayertimes/screens/home_page/home_page.dart';
import 'package:prayertimes/theme/primary_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  HiveService.regsterAllAdapters();

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
      initialRoute: "/",
      onGenerateRoute: (settings) => GenerateRouter.generateRoute(settings),
    );
  }
}
