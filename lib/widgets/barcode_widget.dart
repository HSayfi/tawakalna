import 'package:flutter/material.dart';

class BarcodeWidget extends StatelessWidget {
  const BarcodeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.green[900]!,
        border: Border.all(color: Color.fromARGB(100, 10, 40, 10), width: 2.5),
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.green[800]!,
            Colors.green[900]!,
            Color.fromARGB(255, 5, 83, 30),
          ],
        ),
      ),
      // color: Colors.green[200],
      height: 155,
      width: 380,
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
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.refresh, color: Colors.white,),
                      )),
                ),
                Expanded(
                  flex: 5,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "محصّن جرعة أولى",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "آخر تحديث: الأربعاء ١ سبتمبر، ١١:٢٦ م",
                        textAlign: TextAlign.right,
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Image.asset("assets/images/barcode.png"),
                ),
              ],
            ),
          ),
          //Injecttions row
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(8),
                ),
                color: Colors.white,
              ),
              width: double.infinity,
              height: 155 * 0.4,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "محصن جرعة أولى حتى تاريخ ٢٠٢١/١٠/٢٩",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
