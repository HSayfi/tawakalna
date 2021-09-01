import 'package:flutter/material.dart';
import 'package:tawakalna/custom_icons/tawakalna_app_icons_icons.dart';

class ServicesGridWidget extends StatelessWidget {
  static const iconSize = 35.0;
  static const fontSize = 11.0;
  static const iconColor = Color(0xFF5E9A92);
  static const heightSpace = 20.0;

  final List<Widget> servicesIcons = [
    Column(
      children: [
        Icon(
          TawakalnaAppIcons.hands_heart,
          size: iconSize,
          color: iconColor,
        ),
        SizedBox(height: heightSpace),
        Text(
          "التبرع بالأعضاء",
          style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.normal),
          textAlign: TextAlign.center,
        ),
      ],
    ),
    Column(
      children: [
        Icon(
          TawakalnaAppIcons.health_passport,
          size: iconSize,
          color: iconColor,
        ),
        SizedBox(height: heightSpace),
        Text(
          "الجواز الصحي",
          style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.normal),
          textAlign: TextAlign.center,
        ),
      ],
    ),
    Column(
      children: [
        Icon(
          TawakalnaAppIcons.vaccine,
          size: iconSize,
          color: iconColor,
        ),
        SizedBox(height: heightSpace),
        Text(
          "لقاح كورونا",
          style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.normal),
          textAlign: TextAlign.center,
        ),
      ],
    ),
    Column(
      children: [
        Icon(
          TawakalnaAppIcons.family_insurance,
          size: iconSize,
          color: iconColor,
        ),
        SizedBox(height: heightSpace),
        Text(
          "تعريف رقم الجوال",
          style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.normal),
          textAlign: TextAlign.center,
        ),
      ],
    ),
    Column(
      children: [
        Icon(
          TawakalnaAppIcons.id_card,
          size: iconSize,
          color: iconColor,
        ),
        SizedBox(height: heightSpace),
        Text(
          "بطاقة الوضع الصحي",
          style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.normal),
          textAlign: TextAlign.center,
        ),
      ],
    ),
    Column(
      children: [
        Icon(
          TawakalnaAppIcons.microscope,
          size: iconSize,
          color: iconColor,
        ),
        SizedBox(height: heightSpace),
        Text(
          "فحص كورونا",
          style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.normal),
          textAlign: TextAlign.center,
        ),
      ],
    ),
    Column(
      children: [
        Icon(
          TawakalnaAppIcons.qr_code,
          size: iconSize,
          color: iconColor,
        ),
        SizedBox(height: heightSpace),
        Text(
          "باركود زيارة تجمع",
          style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.normal),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton.icon(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.grey,
                  size: 18,
                ),
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 12),
                  padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                ),
                onPressed: () {},
                label: Text(
                  "عرض الكل",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Almarai',
                  ),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: TextStyle(fontSize: 15),
                  padding: EdgeInsets.fromLTRB(0, 0, 25, 0),
                ),
                onPressed: () {},
                child: Text(
                  "الخدمات الحديثة",
                  style: TextStyle(
                    color: Color(0xFF5E9A92),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Almarai',
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 170,
            child: ListView.builder(
              itemCount: servicesIcons.length,
              itemBuilder: (context, index) {
                return Card(
                    elevation: 2,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                      width: 102.0,
                      child: servicesIcons[index],
                      alignment: Alignment.center,
                    ));
              },
              scrollDirection: Axis.horizontal,
              reverse: true,
            ),
          ),
        ],
      ),
    );
  }
}
