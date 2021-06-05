import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'MainMenu.dart';

class ListDataRegister extends StatefulWidget {
  _ListDataRegister createState() => _ListDataRegister();
}

class _ListDataRegister extends State<ListDataRegister> {
  int _radioValue = 0;
  late DateTime _dateTime;
  var dateMessage = "";

  void _handleRadioValueChange(int value) {
    setState(() {
      _radioValue = value;

      switch (_radioValue) {
        case 0:
          break;
        case 1:
          break;
        case 2:
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(171, 170, 213, 1),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        padding: EdgeInsets.only(left: 15.0, right: 15.0),
        margin: EdgeInsets.only(top: 100.0),
        child: ListView(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                  flex: 7,
                  child: Container(
                    margin: EdgeInsets.only(right: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "วัน / เดือน / ปี (เกิด)",
                          style: TextStyle(
                              fontFamily: 'SukhumvitSet-Bold',
                              fontSize: 20.0,
                              color: Colors.white),
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
                                color: Colors.white,
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
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "อายุ",
                          style: TextStyle(
                              fontFamily: 'SukhumvitSet-Bold',
                              fontSize: 20.0,
                              color: Colors.white),
                        ),
                        Container(
                          width: double.maxFinite,
                          child: TextField(
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
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
                                fillColor: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Row(
                children: [
                  Text(
                    "เพศ",
                    style: TextStyle(
                        fontFamily: 'SukhumvitSet-Bold',
                        fontSize: 20.0,
                        color: Colors.white),
                  ),
                  Radio(
                    value: 0,
                    activeColor: Color.fromRGBO(31, 41, 84, 1),
                    groupValue: _radioValue,
                    onChanged: (value) => _handleRadioValueChange(0),
                  ),
                  Text(
                    "ชาย",
                    style: TextStyle(
                        fontFamily: 'SukhumvitSet-Bold',
                        fontSize: 20.0,
                        color: Colors.white),
                  ),
                  Radio(
                    value: 1,
                    activeColor: Color.fromRGBO(31, 41, 84, 1),
                    groupValue: _radioValue,
                    onChanged: (value) => _handleRadioValueChange(1),
                  ),
                  Text(
                    "หญิง",
                    style: TextStyle(
                        fontFamily: 'SukhumvitSet-Bold',
                        fontSize: 20.0,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                  flex: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10.0),
                        child: Text(
                          "รหัสเข้าใช้งาน",
                          style: TextStyle(
                              fontFamily: 'SukhumvitSet-Bold',
                              fontSize: 20.0,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        child: TextField(
                          textAlign: TextAlign.start,
                          obscureText: true,
                          keyboardType: TextInputType.text,
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
                              fillColor: Colors.white),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(top: 50.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      margin: EdgeInsets.only(right: 5),
                      width: double.maxFinite,
                      child: RaisedButton(
                        padding: EdgeInsets.only(
                            top: 10, bottom: 10.0, left: 20, right: 20),
                        splashColor: Color.fromRGBO(21, 46, 139, 1),
                        color: Color.fromRGBO(31, 41, 84, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        onPressed: () {
                          Navigator.push(context,
                              CupertinoPageRoute(builder: (context) {
                            return MainMenu();
                          }));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Text(
                                "ลงทะเบียน",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'SukhumvitSet-Bold'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Container(
                      margin: EdgeInsets.only(left: 5),
                      width: double.maxFinite,
                      child: RaisedButton(
                        padding: EdgeInsets.only(
                            top: 10, bottom: 10.0, left: 20, right: 20),
                        splashColor: Color.fromRGBO(21, 46, 139, 1),
                        color: Color.fromRGBO(31, 41, 84, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        onPressed: () {
                          //สั้งปิดหน้า
                          Navigator.pop(context);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Text(
                                "ยกเลิก",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'SukhumvitSet-Bold'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
