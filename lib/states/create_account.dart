import 'package:blashop/utility/my_constant.dart';
import 'package:blashop/widgets/show_title.dart';
import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
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
            buildtitle('ประเภทผู้ใช้', h * 0.04)
          ],
        ),
      ),
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

Row buildName(double size) {
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
