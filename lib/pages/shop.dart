import 'package:esim/pages/country.dart';
import 'package:esim/pages/profile.dart';

import 'package:esim/widgets/show_balance.dart';
import 'package:flutter/material.dart';

class Shop extends StatefulWidget {
  Shop({Key? key}) : super(key: key);

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  TextEditingController inputcountry = TextEditingController();

  String currentSearch = '';

  void updateSearchResults(String query) {
    setState(() {
      currentSearch = query;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Profile();
                          }));
                        },
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/pictures/profile.png'),
                          radius: 25,
                          backgroundColor: Colors.white,
                        ),
                      )
                    ],
                  ),
                  ShowBalance(),
                  Container(
                    height: 0.06 * height,
                    width: 0.9 * width,
                    margin: EdgeInsets.symmetric(
                      horizontal: 0.03 * width,
                      vertical: 0.03 * height,
                    ),
                    child: TextField(
                      controller: inputcountry,
                      onChanged: updateSearchResults,
                      decoration: InputDecoration(
                        prefixIcon: const Padding(
                          padding: EdgeInsets.only(
                              left: 10,
                              right: 10), // Adjust the padding as needed
                          child: Icon(
                            Icons.search,
                            color: Color(0xff545454),
                          ),
                        ),
                        hintText: 'Search by country',
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 15), // Adjust the padding as needed
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                    height: 40,
                    decoration: BoxDecoration(
                        color: Color(0xffD9D9D9),
                        border: Border.all(color: Colors.black12),
                        borderRadius: BorderRadius.circular(10)),
                    child: TabBar(
                      indicator: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(10), // Creates border
                          color: Color(0xffFFFFFF)),
                      tabs: [
                        Text(
                          'Country',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Inter',
                            fontSize: 14.0,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Regional',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Inter',
                            fontSize: 14.0,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Lifetime',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Inter',
                            fontSize: 14.0,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 0.65 * height,
                    child: TabBarView(
                      children: [
                        Country(country: currentSearch),
                        Center(child: Text('Tab 2 content')),
                        Center(child: Text('Tab 2 content')),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
