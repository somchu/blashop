import 'package:blashop/states/authen.dart';
import 'package:blashop/states/buyer_service.dart';
import 'package:blashop/states/create_account.dart';
import 'package:blashop/states/rider_service.dart';
import 'package:blashop/states/saler_service.dart';
import 'package:blashop/utility/my_constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//final ประกาศแล้วไม่สามารถแก้ไขได้
//map ค่าชื่อ state เข้ากับ stateful เพื่อใช้เป็นเ route ในการเปลี่ยนหน้าจอ
final Map<String, WidgetBuilder> map = {
  '/authen': (BuildContext context) => const Authen(),
  '/createaccount': (BuildContext context) => const CreateAccount(),
  'buyerservice': (BuildContext context) => const BuyerService(),
  'salerservice': (BuildContext context) => const SalerService(),
  'riderservice': (BuildContext context) => const RiderService(),
};

String? initialRoute; //? การประกาศตัวแปรที่อนุญาตให้มีค่าเป็น null ได้

//constructor
void main() {
  initialRoute = MyConstant.RouteAuthen;
  runApp(MyApp()); //สั่งให้ MyApp ทำงาน
}

//สร้าง stateless เพื่อรับค่าจาก stateful
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //return เป็น materialapp
    return MaterialApp(
      title: MyConstant.appname,
      routes: map,
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme(Theme.of(context).textTheme),
      ),
      initialRoute: initialRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
