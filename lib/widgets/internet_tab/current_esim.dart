import 'package:esim/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CurrentEsim extends StatelessWidget {
  CurrentEsim(
      {required this.coverage,
      required this.remainingdata,
      required this.timeleft});

  final String coverage;
  final String remainingdata;
  final String timeleft;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Center(
      child: Container(
        height: 0.25 * height,
        width: 0.9 * width,
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff082777),
                Color(0xff88A9FD),
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              child: Row(
                children: [
                  const Image(
                    image: AssetImage(
                      'assets/icons/antenna.png',
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Kargi Mobile',
                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontFamily: 'Inter',
                      fontSize: 20.0,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/world.svg',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Coverage',
                        style: whitemiddle,
                      )
                    ],
                  ),
                  Text(
                    '$coverage',
                    style: whitemiddle,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image(
                        image: AssetImage(
                          'assets/icons/data.png',
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Remaining data',
                        style: whitemiddle,
                      )
                    ],
                  ),
                  Text(
                    '$remainingdata GB',
                    style: whitemiddle,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/symbols.svg',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Time left',
                        style: whitemiddle,
                      )
                    ],
                  ),
                  Text(
                    '$timeleft d',
                    style: whitemiddle,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
