import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20,),
        Container(
          height: 220,
          width: 380,
          child: Stack(
            children: [
              Image.network(
                "https://t4.ftcdn.net/jpg/02/73/50/71/360_F_273507166_Qzu8wcMRdkldX5LbEbWsKf7Zom8x0qzG.jpg",
                fit: BoxFit.cover,
                height: 220,
                width: 380,
              ),
              Positioned(
                bottom: 80,
                child: Text(
                  "Hellow!",
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 60,),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.green[900]!,
            border: Border.all(color: Color.fromARGB(100, 10, 40, 10), width: 2.5),

          ),
          // color: Colors.green[200],
          height: 200,
          width: 450,
          // padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
          // color: Colors.green[200],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                flex: 3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text("Refresh btn"),
                    ),
                    Expanded(
                      flex: 5,
                      child: Text(
                        "محصن جرعة أولى \n آخر تحديث بلاب",
                        textAlign: TextAlign.right,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        "barcode",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              //Injecttions row
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(bottom: Radius.circular(8),),
                    
                    color: Colors.white,
                  ),
                  width: double.infinity,
                  height: 200 * 0.3,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text("محصن جرعة أولى بلاب",textAlign: TextAlign.right,),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
