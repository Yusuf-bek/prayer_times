String currentMonth = DateTime.now().month.toString();
String currentDay = DateTime.now().day.toString();

class MyApiPath {
  static String generatePath(String region) {
    return "https://namozvaqti.herokuapp.com/api/monthly?region=" +
        region +
        "&month=" +
        currentMonth;
  }
}
