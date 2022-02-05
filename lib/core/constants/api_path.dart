int currentMonth = DateTime.now().month;

class MyApiPath {
  static String generatePath(String region) {
    return "https://namozvaqti.herokuapp.com/api/monthly?region=" +region + "&month=" + currentMonth.toString();
  }
}
