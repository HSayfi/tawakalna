import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tawakalna/widgets/barcode_widget.dart';
import 'package:tawakalna/widgets/profile_widget.dart';
import 'package:tawakalna/widgets/services_grid_widget.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10,),
        ProfileWidget(),
        SizedBox(height: 60,),
        BarcodeWidget(),
        SizedBox(height: 20,),
        ServicesGridWidget(),
      ],
    );
  }
}
