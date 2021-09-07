import 'package:flutter/material.dart';

class ArabicConverterPackage {

  static String monthToArabic (int month) {
    String monthArabic="";

    switch (month){
      case 9:
        return monthArabic = "سبتمبر";
      case 10:
        return monthArabic = "اوكتوبر";
    }
    return monthArabic;
  }

  static String weekdayToArabic (int weekday) {
    String weekdayArabic ="الأحد";

    switch (weekday){
      case 1:
        return weekdayArabic = "الاثنين";
      case 2:
        return weekdayArabic = "الثلاثاء";
      case 3:
        return weekdayArabic = "الأربعاء";
      case 4:
        return weekdayArabic = "الخميس";
      case 5:
        return weekdayArabic = "الجمعة";
      case 6:
        return weekdayArabic = "السبت";
      case 7:
        return weekdayArabic = "الأحد";
    }
    return weekdayArabic;
  }

  static String toArabicNumbers(String number) {
    String res = '';

    final arabics = ['٠', '١', '٢', '٣', '٤', '٥', '٦', '٧', '٨', '٩'];
    number.characters.forEach((element) {
      res += arabics[int.parse(element)];
    });
    return res;
  }

  static String arabicDateTimeNumbers(){
    var hour = DateTime.now().hour;
    String hourArabic;
    var min = DateTime.now().minute;
    var minArabic;
    var month = DateTime.now().month;
    var monthArabic ="";
    var day = DateTime.now().day;
    var dayArabic ="";
    var weekday = DateTime.now().weekday;
    var weekdayArabic ="";
    var dayNight = " م";
    var time ="";
    var date ="";
    var dateTime ="";

    monthArabic = monthToArabic(month);
    weekdayArabic = weekdayToArabic(weekday);
    dayArabic = toArabicNumbers(day.toString());

    if (hour < 12)
      dayNight = " ص";

    if(hour > 12)
      hour -= 12;

    if(min < 10)
      minArabic = toArabicNumbers("0" + min.toString());
    else
      minArabic = toArabicNumbers(min.toString());

    hourArabic = toArabicNumbers(hour.toString());

    time = hourArabic + ":" + minArabic + dayNight;
    date = weekdayArabic + " " + dayArabic + " " + monthArabic;
    dateTime = date  + "، " + time;

    return dateTime;
  }
}