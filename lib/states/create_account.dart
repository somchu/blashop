import 'dart:ui';

import 'package:blashop/utility/my_constant.dart';
import 'package:blashop/widgets/show_title.dart';
import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  String? typeUser;
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Create New Account"),
        centerTitle: true,
        backgroundColor: MyConstant.primary,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        behavior: HitTestBehavior.opaque,
        child: ListView(
          padding: EdgeInsets.all(h * 0.02),
          children: [
            buildtitle('ข้อมูลทั่วไป', 0),
            buildName(size),
            buildtitle('ประเภทผู้ใช้', h * 0.04),
            buildRadioBuyer(size),
            buildRadioSeller(size),
            buildRadioRider(size),
            buildAddress(size),
            buildPhone(size),
            buildUser(size),
            buildPassword(size),
          ],
        ),
      ),
    );
  }

  Widget buildRadioBuyer(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: size * 0.6,
          child: RadioListTile(
              activeColor: MyConstant.primary,
              value: 'buyer',
              groupValue: typeUser,
              onChanged: (value) {
                setState(() {
                  typeUser = value as String?;
                });
              },
              title: ShowTitle(
                title: 'ผู้ซื้อ (ฺBuyer)',
                textStyle: MyConstant().h3style(),
              )),
        ),
      ],
    );
  }

  Widget buildRadioSeller(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: size * 0.6,
          child: RadioListTile(
              activeColor: MyConstant.primary,
              value: 'seller',
              groupValue: typeUser,
              onChanged: (value) {
                setState(() {
                  typeUser = value as String?;
                });
              },
              title: ShowTitle(
                title: 'ผู้ขาย (ฺSeller)',
                textStyle: MyConstant().h3style(),
              )),
        ),
      ],
    );
  }

  Widget buildRadioRider(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: size * 0.6,
          child: RadioListTile(
              activeColor: MyConstant.primary,
              value: 'rider',
              groupValue: typeUser,
              onChanged: (value) {
                setState(() {
                  typeUser = value as String?;
                });
              },
              title: ShowTitle(
                title: 'ผู้ส่ง (ฺRider)',
                textStyle: MyConstant().h3style(),
              )),
        ),
      ],
    );
  }

  Container buildtitle(String str_title, double h) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: h),
      child: ShowTitle(
        title: str_title,
        textStyle: MyConstant().h2style(),
      ),
    );
  }
}

Widget buildName(double size) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        margin: EdgeInsets.only(top: 16),
        width: size * 0.6,
        child: TextFormField(
          decoration: InputDecoration(
            labelText: 'Name:',
            labelStyle: MyConstant().h3style(),
            prefixIcon: Icon(
              Icons.account_box,
              color: MyConstant.dark,
            ),
            contentPadding: EdgeInsets.fromLTRB(25, 25, 25, 0),
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

Widget buildAddress(double size) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        margin: EdgeInsets.only(top: 16),
        width: size * 0.6,
        child: TextFormField(
          maxLines: 3,
          decoration: InputDecoration(
            hintText: 'Address:',
            hintStyle: MyConstant().h3style(),
            prefixIcon: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
              child: Icon(
                Icons.house,
                color: MyConstant.dark,
              ),
            ),
            contentPadding: EdgeInsets.fromLTRB(25, 25, 25, 0),
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

Widget buildUser(double size) {
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
            prefixIcon: Icon(
              Icons.account_box,
              color: MyConstant.dark,
            ),
            contentPadding: EdgeInsets.fromLTRB(25, 25, 25, 0),
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

Widget buildPhone(double size) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        margin: EdgeInsets.only(top: 16),
        width: size * 0.6,
        child: TextFormField(
          decoration: InputDecoration(
            labelText: 'Phone:',
            labelStyle: MyConstant().h3style(),
            prefixIcon: Icon(
              Icons.phone_android,
              color: MyConstant.dark,
            ),
            contentPadding: EdgeInsets.fromLTRB(25, 25, 25, 0),
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

Widget buildPassword(double size) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        margin: EdgeInsets.only(top: 16),
        width: size * 0.6,
        child: TextFormField(
          decoration: InputDecoration(
            labelText: 'Password:',
            labelStyle: MyConstant().h3style(),
            prefixIcon: Icon(
              Icons.password,
              color: MyConstant.dark,
            ),
            contentPadding: EdgeInsets.fromLTRB(25, 25, 25, 0),
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
