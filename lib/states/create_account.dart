import 'package:flutter/material.dart';
import 'package:shoppingmall/utillity/my_constant.dart';
import 'package:shoppingmall/widgets/show_title.dart';

class CreateAccoun extends StatefulWidget {
  const CreateAccoun({Key? key}) : super(key: key);

  @override
  State<CreateAccoun> createState() => _CreateAccounState();
}

class _CreateAccounState extends State<CreateAccoun> {
  Row buildName(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 16),
          width: size * 0.6,
          child: TextFormField(
            decoration: InputDecoration(
              labelStyle: MyConstant().h3Style(),
              labelText: 'Name :',
              prefixIcon: Icon(
                Icons.fingerprint,
                color: MyConstant.dark,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyConstant.dark),
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyConstant.light),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Create New Account'),
        backgroundColor: MyConstant.primary,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          buildTitle('ข้อมูลทั่วไป :'),
          buildName(size),
          buildTitle('ชนิดของ User :')
        ],
      ),
    );
  }

  Container buildTitle(String title) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      child: ShowTitle(
        title: title,
        textStyle: MyConstant().h2Style(),
      ),
    );
  }
}
