import 'package:prayertimes/screens/apps/hadis/hadis_page.dart';
import 'package:prayertimes/screens/apps/musxaf/musxaf_page.dart';
import 'package:prayertimes/screens/apps/zikr/zikr_page.dart';
import 'package:prayertimes/screens/settings/settings_page.dart';

List<String> asssetImagePaths = [
  "assets/background/bomdod.jpeg",
  "assets/background/peshin.jpeg",
  "assets/background/asr.jpeg",
  "assets/background/shom.jpeg",
  "assets/background/hufton.jpeg"
];

int currentImageIndex = 0;

List<String> assetIconAppsPaths = [
  "assets/icons/quran.png",
  "assets/icons/hadis.png",
  "assets/icons/zikr.png",
  "assets/icons/settings.png",
];

List<String> assetAppsNames = [
  "Musxaf",
  "Hadith",
  "Zikr",
  "Settings",
];

List assetAppsNavigatePath = [
  "/musxafpage",
  "/hadispage"
  "/zikrpage"
  "/settingspage"
];
