import 'package:blashop/utility/my_constant.dart';
import 'package:blashop/widgets/show_image.dart';
import 'package:blashop/widgets/show_title.dart';
import 'package:flutter/material.dart';

class Authen extends StatefulWidget {
  const Authen({Key? key}) : super(key: key);

  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
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
              enabledBorder: OutlineInputBorder(),
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
