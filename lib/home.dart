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
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(Icons.notifications_outlined, color: Colors.green[800],),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: Text("It's cloudy here"),
            ),
            Center(
              child: Text("It's rainy here"),
            ),
            Center(
              child: Text("It's rainy here"),
            ),
            Center(
              child: Text("It's rainy here"),
            ),
            HomeTab(),
            // Center(
            //   child: Text("It's sunny here"),
            // ),
          ],
        ),
        bottomNavigationBar: Container(
          color: Colors.white,
          child: TabBar(
            indicatorWeight: 0.5,
            labelPadding: EdgeInsets.only(bottom: 0.0),
            labelColor: Colors.green[500],
            overlayColor: MaterialStateProperty.resolveWith((states) => Colors.grey[600]),
            unselectedLabelColor: Colors.grey[500],
            automaticIndicatorColorAdjustment: false,
            enableFeedback: true,
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
            indicatorColor: Colors.white,

            tabs: [
              Tab(
                iconMargin: EdgeInsets.only(bottom: 0.0),
                icon: Icon(Icons.person_outline, size: 35,),
                child: Text("حسابي",),
              ),
              Tab(
                iconMargin: EdgeInsets.only(bottom: 0.0),
                icon: Icon(Icons.layers_outlined, size: 30,),
                // text: 'لوحة البيانات',
                  child: FittedBox(fit: BoxFit.fitWidth,child: Text("لوحة البيانات"),),
              ),
              Tab(
                iconMargin: EdgeInsets.only(bottom: 0.0),
                icon: Icon(Icons.account_balance_wallet_outlined, size: 30, ),
                child: FittedBox(fit: BoxFit.fitWidth, child: Text("المحفظة الرقمية",)),
              ),
              Tab(
                iconMargin: EdgeInsets.only(bottom: 0.0),
                icon: Icon(Icons.view_module_outlined, size: 35,),
                child: Text("الخدمات",),
              ),
              Tab(
                iconMargin: EdgeInsets.only(bottom: 0.0),
                icon: Icon(Icons.home_outlined, size: 35,),
                child: FittedBox(fit: BoxFit.fitWidth, child: Text("الرئيسية",)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
