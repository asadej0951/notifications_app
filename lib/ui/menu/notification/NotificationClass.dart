import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationClass extends StatefulWidget {
  @override
  _NotificationClass createState() => _NotificationClass();
}

class _NotificationClass extends State<NotificationClass> {
  late DateTime _dateTime;
  var dateMessage = "";
  var timeMessage = "";

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
                      child: Text("ตั้งค่าการเตือน",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontFamily: 'SukhumvitSet-Bold'),
                          textAlign: TextAlign.center),
                    ),
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: Container(
                    height: double.maxFinite,
                    padding: EdgeInsets.only(left: 15, right: 15),
                    margin: EdgeInsets.only(top: 15.0),
                    child: ListView(
                      children: [
                        Container(
                          width: double.maxFinite,
                          child: Text(
                            "ชื่อยา",
                            style: TextStyle(
                                color: Color.fromRGBO(31, 41, 84, 1),
                                fontSize: 18,
                                fontFamily: 'SukhumvitSet-Bold'),
                          ),
                        ),
                        Container(
                          width: double.maxFinite,
                          child: TextField(
                            textAlign: TextAlign.start,
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.next,
                            style: TextStyle(
                                height: 1,
                                fontSize: 20.0,
                                fontFamily: 'SukhumvitSet-Bold',
                                color: Colors.black),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                    borderSide: BorderSide(
                                        width: 0, style: BorderStyle.none)),
                                filled: true,
                                fillColor: Color.fromRGBO(236, 235, 241, 1)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          width: double.maxFinite,
                          child: Text(
                            "เวลาที่รับประทานยา",
                            style: TextStyle(
                                color: Color.fromRGBO(31, 41, 84, 1),
                                fontSize: 18,
                                fontFamily: 'SukhumvitSet-Bold'),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            showTimePicker(
                              context: context,
                              initialTime: TimeOfDay.now(),
                            ).then((time) {
                              setState(() {
                                var hour = "";
                                var minute = "";
                                if (time!.hour.toString().length == 1) {
                                  hour = "0" + time.hour.toString();
                                } else {
                                  hour = time.hour.toString();
                                }
                                if (time.minute.toString().length == 1) {
                                  minute = "0" + time.minute.toString();
                                } else {
                                  minute = time.minute.toString();
                                }
                                timeMessage = hour + " : " + minute;
                              });
                            });
                          },
                          child: Container(
                            height: 60,
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(236, 235, 241, 1),
                                borderRadius: BorderRadius.circular(8.0)),
                            child: Center(
                              child: Text(
                                timeMessage,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    height: 1,
                                    fontSize: 20.0,
                                    fontFamily: 'SukhumvitSet-Bold',
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          width: double.maxFinite,
                          child: Text(
                            "เเจ้งเตือน",
                            style: TextStyle(
                                color: Color.fromRGBO(31, 41, 84, 1),
                                fontSize: 18,
                                fontFamily: 'SukhumvitSet-Bold'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15.0),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 5),
                                width: 100,
                                height: 40,
                                child: RaisedButton(
                                  // padding: EdgeInsets.only(
                                  //     top: 10,
                                  //     bottom: 10.0,
                                  //     left: 20,
                                  //     right: 20),
                                  splashColor: Color.fromRGBO(21, 46, 139, 1),
                                  color: Color.fromRGBO(31, 41, 84, 1),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(12.0)),
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Text(
                                          "ทุกวัน",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontFamily: 'SukhumvitSet-Bold'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5),
                                width: 100,
                                height: 40,
                                child: RaisedButton(
                                  // padding: EdgeInsets.only(
                                  //     top: 10,
                                  //     bottom: 10.0,
                                  //     left: 20,
                                  //     right: 20),
                                  splashColor: Color.fromRGBO(21, 46, 139, 1),
                                  color: Color.fromRGBO(31, 41, 84, 1),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(12.0)),
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Text(
                                          "สัปดาห์",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontFamily: 'SukhumvitSet-Bold'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 40,
                                margin: EdgeInsets.only(left: 5),
                                child: RaisedButton(
                                  // padding: EdgeInsets.only(
                                  //     top: 10,
                                  //     bottom: 10.0,
                                  //     left: 20,
                                  //     right: 20),
                                  splashColor: Color.fromRGBO(21, 46, 139, 1),
                                  color: Color.fromRGBO(31, 41, 84, 1),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(12.0)),
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Text(
                                          "ทุกเดือน",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontFamily: 'SukhumvitSet-Bold'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          width: double.maxFinite,
                          child: Text(
                            "วันที่",
                            style: TextStyle(
                                color: Color.fromRGBO(31, 41, 84, 1),
                                fontSize: 18,
                                fontFamily: 'SukhumvitSet-Bold'),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(1950),
                                    lastDate: DateTime(2022))
                                .then((date) {
                              setState(() {
                                _dateTime = date!;
                                dateMessage = _dateTime.day.toString() +
                                    "/" +
                                    _dateTime.month.toString() +
                                    "/" +
                                    _dateTime.year.toString();
                              });
                            });
                          },
                          child: Container(
                            height: 60,
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(236, 235, 241, 1),
                                borderRadius: BorderRadius.circular(8.0)),
                            child: Center(
                              child: Text(
                                dateMessage,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    height: 1,
                                    fontSize: 20.0,
                                    fontFamily: 'SukhumvitSet-Bold',
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 40,
                          margin: EdgeInsets.only(left: 5, top: 20),
                          child: RaisedButton(
                            // padding: EdgeInsets.only(
                            //     top: 10,
                            //     bottom: 10.0,
                            //     left: 20,
                            //     right: 20),
                            splashColor: Color.fromRGBO(21, 46, 139, 1),
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0)),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  child: Text(
                                    "เพิ่มข้อมูล",
                                    style: TextStyle(
                                        color: Color.fromRGBO(31, 41, 84, 1),
                                        fontSize: 20,
                                        fontFamily: 'SukhumvitSet-Bold'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 15.0),
                            height: 2.0,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(171, 170, 213, 1),
                            ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
