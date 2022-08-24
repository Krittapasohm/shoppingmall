import 'package:flutter/material.dart';
import 'package:shoppingmall/utillity/my_constant.dart';
import 'package:shoppingmall/widgets/show_image.dart';
import 'package:shoppingmall/widgets/show_title.dart';

class MyDialog{
  Future<ฺNull>  alertLocationService(BuildContext context) async{
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
          title: ListTile(
            leading: ShowImage(path: MyConstant.image1),
            title: ShowTitle(title: 'Location Service ปิดอยู่', textStyle: MyConstant().h2Style(),),
            subtitle: ShowTitle(title: 'กรุณาปิด Location Service ด้วยครับ', textStyle: MyConstant().h3Style()),
            ),
            actions: [TextButton(onPressed: () => Navigator.pop(context), child: Text('OK'))],
          ),
      );
    }
  }