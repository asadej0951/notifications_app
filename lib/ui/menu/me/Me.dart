import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notifications_app/ui/menu/me/UpdateMe.dart';

class Me extends StatefulWidget {
  @override
  _Me createState() => _Me();
}

class _Me extends State<Me> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(227, 226, 243, 1),
      body: Container(
        child: Stack(
          children: [
            ListView(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(144, 143, 198, 1),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15.0),
                          bottomRight: Radius.circular(15.0))),
                  height: 70,
                  width: double.maxFinite,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      margin: EdgeInsets.only(top: 20),
                      width: double.maxFinite,
                      child: Text("ข้อมูลส่วนตัว",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontFamily: 'SukhumvitSet-Medium'),
                          textAlign: TextAlign.center),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    children: [
                      Container(
                        width: double.maxFinite,
                        height: 50,
                        margin: EdgeInsets.only(top: 15),
                        padding: EdgeInsets.only(
                            top: 5, left: 5, right: 5, bottom: 5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12.0)),
                        child: Stack(
                          children: [
                            Container(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text("ข้อมูลส่วนตัว",
                                    style: TextStyle(
                                        color: Color.fromRGBO(31, 41, 84, 1),
                                        fontSize: 18,
                                        fontFamily: 'SukhumvitSet-Bold')),
                              ),
                            ),
                            Container(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: FloatingActionButton(
                                  mini: true,
                                  backgroundColor:
                                      Color.fromRGBO(255, 204, 0, 1),
                                  child: Icon(
                                    Icons.carpenter,
                                    color: Color.fromRGBO(227, 226, 243, 1),
                                    size:20.0,
                                  ),
                                  onPressed: () {
                                    Navigator.push(context,
                                        CupertinoPageRoute(builder: (context) {
                                          return UpdateMe();
                                        }));
                                  },
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(top:15,left: 20,right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("โรงพยาบาลที่รักษาโรคกระดูกพรุน",
                          style: TextStyle(
                              color: Color.fromRGBO(31, 41, 84, 1),
                              fontSize: 15,
                              fontFamily: 'SukhumvitSet-Bold'),
                          textAlign: TextAlign.center),
                      Text("อุ้มผาง",
                          style: TextStyle(
                              color: Color.fromRGBO(31, 41, 84, 1),
                              fontSize: 15,
                              fontFamily: 'SukhumvitSet-Medium'),
                          textAlign: TextAlign.center),
                    ],
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(top:15,left: 20,right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("วันที่เริ่มใช้ยารักษาโรคกระดูกพรุน",
                          style: TextStyle(
                              color: Color.fromRGBO(31, 41, 84, 1),
                              fontSize: 15,
                              fontFamily: 'SukhumvitSet-Bold'),
                          textAlign: TextAlign.center),
                      Text("20 เมษายน 2564",
                          style: TextStyle(
                              color: Color.fromRGBO(31, 41, 84, 1),
                              fontSize: 15,
                              fontFamily: 'SukhumvitSet-Medium'),
                          textAlign: TextAlign.center),
                    ],
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(top:15,left: 20,right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("วันที่นัดครั้งต่อไป",
                          style: TextStyle(
                              color: Color.fromRGBO(31, 41, 84, 1),
                              fontSize: 15,
                              fontFamily: 'SukhumvitSet-Bold'),
                          textAlign: TextAlign.center),
                      Row(
                        children: [
                          Text("20 พฤษภาคม 2564",
                              style: TextStyle(
                                  color: Color.fromRGBO(31, 41, 84, 1),
                                  fontSize: 15,
                                  fontFamily: 'SukhumvitSet-Medium'),
                              textAlign: TextAlign.center),
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            child: GestureDetector(
                              onTap: (){
                              },
                              child: Row(
                                children: [
                                  Icon(Icons.yard_sharp),
                                  Text("เเก้ไข",
                                      style: TextStyle(
                                          color: Color.fromRGBO(31, 41, 84, 1),
                                          fontSize: 15,
                                          fontFamily: 'SukhumvitSet-Medium'),
                                      textAlign: TextAlign.center),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    children: [
                      Container(
                        width: double.maxFinite,
                        height: 50,
                        margin: EdgeInsets.only(top: 15),
                        padding: EdgeInsets.only(
                            top: 5, left: 5, right: 5, bottom: 5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12.0)),
                        child: Stack(
                          children: [
                            Container(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text("รายการยา",
                                    style: TextStyle(
                                        color: Color.fromRGBO(31, 41, 84, 1),
                                        fontSize: 18,
                                        fontFamily: 'SukhumvitSet-Bold')),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
