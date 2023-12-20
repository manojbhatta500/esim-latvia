import 'package:esim/utils/constants.dart';
import 'package:flutter/material.dart';

class YelloButton extends StatefulWidget {
  const YelloButton({super.key, required this.title});
  final String title;

  @override
  State<YelloButton> createState() => _YelloButtonState();
}

class _YelloButtonState extends State<YelloButton> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 50,
      width: 0.8 * width,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      decoration: BoxDecoration(
          color: Color(0xffFC9C2C), borderRadius: BorderRadius.circular(10)),
      child: Center(
          child: Text(
        widget.title,
        style: whitemiddle,
      )),
    );
  }
}
