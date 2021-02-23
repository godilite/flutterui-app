import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testapp/style.dart';

import 'widgets/itemwidget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final items = List<Widget>.generate(10, (i) => ItemWidget());
  List navIcons = <Widget>[
    Icon(CupertinoIcons.house, size: 30, color: kIconColor),
    Icon(
      Icons.map_outlined,
      size: 30,
      color: kIconColor,
    ),
    Icon(
      CupertinoIcons.add,
      size: 30,
      color: kIconColor,
    ),
    Icon(
      CupertinoIcons.doc_text,
      size: 30,
      color: kIconColor,
    ),
    Icon(
      CupertinoIcons.gear,
      size: 30,
      color: kIconColor,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(builder: (context, constraints) {
          return Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 17, vertical: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: constraints.maxWidth * 0.5,
                      child: Text(
                        'Good Afternoon, Tassy',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                            color: Color(0xff3E5481)),
                      ),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/profile.png'),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 13.0),
                      child: Text(
                        'What Would You Love To Buy Today?',
                        style: TextStyle(
                            color: Color(0xff666666),
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                      child: RaisedButton(
                          color: kGreen,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          onPressed: () => null,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Create a shopping list',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20),
                              ),
                              Image(
                                image: AssetImage('assets/arrow.png'),
                                height: 15,
                              )
                            ],
                          )),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 6.4,
              ),
              Container(
                height: constraints.maxHeight * 0.67,
                decoration: BoxDecoration(
                  color: kGrey.withOpacity(0.7),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25.0, vertical: 2),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Available Markets',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 15),
                            ),
                            TextButton(
                                onPressed: () => null,
                                child: Text(
                                  'View All',
                                  style: TextStyle(
                                      color: kGreen,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600),
                                ))
                          ],
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                            itemCount: items.length,
                            itemBuilder: (context, index) {
                              return items[index];
                            }),
                      )
                    ],
                  ),
                ),
              )
            ],
          );
        }),
        extendBody: true,
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: kGreen,
          index: 2,
          items: navIcons,
          onTap: (index) {},
        ),
      ),
    );
  }
}
