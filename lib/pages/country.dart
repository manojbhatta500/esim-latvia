import 'package:esim/widgets/country_tab/country_list.dart';
import 'package:flutter/material.dart';

class Country extends StatefulWidget {
  Country({required this.country});
  final String country;

  @override
  State<Country> createState() => _CountryState();
}

class _CountryState extends State<Country> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(8),
                child: const Text(
                  'Popular countries',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Inter',
                    fontSize: 20.0,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                  height: 0.98 * height,
                  width: width,
                  child: CountryList(searchQuery: widget.country))
            ],
          ),
        ),
      ),
    );
  }
}
