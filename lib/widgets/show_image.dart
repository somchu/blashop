import 'package:flutter/material.dart';

class ShowImage extends StatelessWidget {
  final String imagepath;
  const ShowImage({Key? key, required this.imagepath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(imagepath);
  }
}
