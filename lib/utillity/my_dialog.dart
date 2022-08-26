import 'dart:io';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:shoppingmall/utillity/my_constant.dart';
import 'package:shoppingmall/widgets/show_title.dart';

class MyDialog {
  Future<Null> alertLocationService(BuildContext context) async {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: ListTile(
          title: ShowTitle(
            title: 'Location Service ปิดอยู่',
            textStyle: MyConstant().h2Style(),
          ),
          subtitle: ShowTitle(
              title: 'กรุณาปิด Location Service ด้วยครับ',
              textStyle: MyConstant().h3Style()),
        ),
        actions: [
          TextButton(
              onPressed: () async {
                //=> Navigator.pop(context)
                await Geolocator.openLocationSettings();
                exit(0);
              },
              child: Text('OK'))
        ],
      ),
    );
  }
}
