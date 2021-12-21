import 'package:blashop/utility/my_constant.dart';
import 'package:blashop/widgets/show_image.dart';
import 'package:blashop/widgets/show_title.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Authen extends StatefulWidget {
  const Authen({Key? key}) : super(key: key);

  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  bool StsRedEye = true;
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            buildimage(size),
            buildtitle(),
            buildUser(size),
            buildPassword(size),
          ],
        ),
      ),
    );
  }

  Row buildUser(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 16),
          width: size * 0.6,
          child: TextFormField(
            decoration: InputDecoration(
              labelText: 'User:',
              labelStyle: MyConstant().h3style(),
              contentPadding: EdgeInsets.fromLTRB(25, 25, 25, 0),
              prefixIcon: Icon(
                Icons.account_circle,
                color: MyConstant.primary,
                size: 30,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyConstant.primary),
                borderRadius: BorderRadius.circular(30),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyConstant.dark),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Row buildPassword(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 16),
          width: size * 0.6,
          child: TextFormField(
            obscureText: StsRedEye,
            decoration: InputDecoration(
              labelText: 'Password:',
              labelStyle: MyConstant().h3style(),
              contentPadding: EdgeInsets.fromLTRB(25, 25, 25, 0),
              prefixIcon: Icon(
                Icons.vpn_key,
                color: MyConstant.primary,
                size: 30,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyConstant.primary),
                borderRadius: BorderRadius.circular(30),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyConstant.dark),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Row buildtitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ShowTitle(
          title: MyConstant.appname,
          textStyle: MyConstant().h1style(),
        ),
      ],
    );
  }

  Row buildimage(double size) {
    return Row(
      //ใช้ Row เพื่อให้ image ปรับขนาดตาม size
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: size * 0.6,
          child: ShowImage(imagepath: MyConstant.imgauthen),
        ),
      ],
    );
  }
}
