import 'package:esim/utils/constants.dart';
import 'package:flutter/material.dart';

class upper extends StatelessWidget {
  const upper({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: Card(
          elevation: 12,
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/install');
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: Image.asset('assets/icons/Processor.png'),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'eSIM installation guide',
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
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Image.asset('assets/icons/blue_help.png'),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'FAQ',
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
            ],
          )),
    );
  }
}
