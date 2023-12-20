import 'package:flutter/material.dart';

class Sano extends StatefulWidget {
  Sano(
      {super.key,
      required this.data,
      required this.days,
      required this.price,
      this.indicator = false});

  final String data;
  final String days;
  final String price;

  bool indicator;

  @override
  State<Sano> createState() => _SanoState();
}

class _SanoState extends State<Sano> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (widget.indicator == false) {
            widget.indicator = true;
          } else {
            widget.indicator = false;
          }
        });
      },
      child: Container(
        height: 100,
        width: 70,
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
            color: widget.indicator
                ? Colors.amber
                : Color.fromRGBO(217, 217, 217, 0.25),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Color.fromRGBO(217, 217, 217, 0.75))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 49,
              decoration: BoxDecoration(
                  color: widget.indicator
                      ? Colors.amber
                      : Color.fromRGBO(217, 217, 217, 0.75),
                  borderRadius: BorderRadius.circular(10),
                  border:
                      Border.all(color: Color.fromRGBO(217, 217, 217, 0.75))),
              child: Center(
                  child: Text(
                '${widget.data} Gb',
                style: TextStyle(
                    color: widget.indicator ? Colors.white : Colors.black),
              )),
            ),
            Container(
              height: 49,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      '${widget.days} days',
                      style: TextStyle(
                          color:
                              widget.indicator ? Colors.white : Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Center(
                    child: Text(
                      '${widget.price} €',
                      style: TextStyle(
                          color:
                              widget.indicator ? Colors.white : Colors.black),
                    ),
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
