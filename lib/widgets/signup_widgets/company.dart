import 'package:esim/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Company extends StatelessWidget {
  const Company({super.key, required this.image, required this.text});
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
        height: 60,
        width: 0.8 * width,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Color(0xffD8DADC)),
            borderRadius: BorderRadius.circular(30)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 25,
            ),
            SvgPicture.asset(
              '$image',
              width: 30,
            ),
            SizedBox(
              width: 20,
            ),
            Center(
              child: Text(
                text,
                style: blackmiddle,
              ),
            )
          ],
        ));
  }
}
