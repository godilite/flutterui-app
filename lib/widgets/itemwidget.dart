import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(offset: Offset(2, 4), blurRadius: 5, color: Colors.black12)
      ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(14.0),
              child: Image.asset(
                'assets/yaba.png',
                height: 152.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Yaba Market',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 20)),
                Container(
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0x331FCC79),
                        minRadius: 10,
                        child: Icon(
                          Icons.circle,
                          color: Color(0xff1FCC79),
                          size: 14,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          'open',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff989898)),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0, right: 40.0, top: 15),
            child: Row(children: [
              Icon(Icons.location_pin, color: Color(0xffD8D8D8)),
              Text(
                'Yaba Road, Lagos Nigeria',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff999999)),
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: FlatButton(
                    color: Color.fromRGBO(31, 204, 121, 0.09),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () => null,
                    child: Text(
                      'more details',
                      style: TextStyle(
                          color: Color(0xff1FCC79),
                          fontWeight: FontWeight.w600,
                          fontSize: 12),
                    ),
                  ),
                ),
                SizedBox(
                  width: 14,
                ),
                Expanded(
                  child: FlatButton(
                    color: Color(0xff1FCC79),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () => null,
                    child: Text(
                      'Shop from market',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 12),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
