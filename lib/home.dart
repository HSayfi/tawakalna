import 'package:flutter/material.dart';
import 'package:tawakalna/tabs/home_tab.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 4,
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(Icons.notifications_outlined, color: Color(0xFF5E9A92), size: 35,),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: Image.asset("assets/images/middle_finger.jpg", fit: BoxFit.cover,),
            ),
            Image.asset("assets/images/data_panel_temp.PNG", fit: BoxFit.fill,),
            Image.asset("assets/images/digital_wallet_temp.PNG", fit: BoxFit.fill,),
            Image.asset("assets/images/services_temp.PNG", fit: BoxFit.fill,),
            HomeTab(),
            // Center(
            //   child: Text("It's sunny here"),
            // ),
          ],
        ),
        bottomNavigationBar: Container(
          color: Colors.white,
          child: Container(
            width: 200.0,
            height: 56,
            child: TabBar(
              indicatorWeight: 0.0001,
              labelPadding: EdgeInsets.only(bottom: 0.0),
              labelColor: Color(0xFF5E9A92),
              overlayColor: MaterialStateProperty.resolveWith((states) => Colors.grey[600]),
              unselectedLabelColor: Colors.grey[500],
              automaticIndicatorColorAdjustment: false,
              enableFeedback: true,
              labelStyle: TextStyle(fontWeight: FontWeight.bold, fontFamily: "Almarai", fontSize: 12),
              unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
              indicatorColor: Colors.white,


              tabs: [
                Tab(
                  iconMargin: EdgeInsets.only(bottom: 0.0),
                  icon: Icon(Icons.person_outline, size: 25,),
                  child: Text("حسابي",),
                ),
                Tab(
                  iconMargin: EdgeInsets.only(bottom: 0.0),
                  icon: Icon(Icons.layers_outlined, size: 25,),
                  // text: 'لوحة البيانات',
                    child: FittedBox(fit: BoxFit.fitWidth,child: Text("لوحة البيانات"),),
                ),
                Tab(
                  iconMargin: EdgeInsets.only(bottom: 0.0),
                  icon: Icon(Icons.account_balance_wallet_outlined, size: 25, ),
                  child: FittedBox(fit: BoxFit.fitWidth, child: Text("المحفظة الرقمية",)),
                ),
                Tab(
                  iconMargin: EdgeInsets.only(bottom: 0.0),
                  icon: Icon(Icons.view_module_outlined, size: 25,),
                  child: Text("الخدمات",),
                ),
                Tab(
                  iconMargin: EdgeInsets.only(bottom: 0.0),
                  icon: Icon(Icons.home_outlined, size: 25,),
                  child: FittedBox(fit: BoxFit.fitWidth, child: Text("الرئيسية",)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
