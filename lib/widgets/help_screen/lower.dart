import 'package:esim/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class lower extends StatelessWidget {
  const lower({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      child: Card(
        elevation: 12,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: SvgPicture.asset('assets/icons/telegram.svg'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Contact with support',
                    style: helptext,
                  ),
                ],
              ),
            ),
            Row(
              children: [Image.asset('assets/icons/arrow.png')],
            )
          ],
        ),
      ),
    );
  }
}
