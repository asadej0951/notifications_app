import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UpdateMe extends StatefulWidget {
  @override
  _UpdateMe createState() => _UpdateMe();
}

class _UpdateMe extends State<UpdateMe> {
  int _radioValue = 0;
  var dateMessage = "";
  var birthdayMessage ="";

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
                  height: 100,
                  width: double.maxFinite,
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20.0, left: 10.0),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: IconButton(
                              icon: Icon(
                                Icons.arrow_back_ios_outlined,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            )),
                      ),
                      Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.only(top: 20.0, left: 10.0),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("เเก้ไขข้อมูลส่วนตัว",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontFamily: 'SukhumvitSet-SemiBold'),
                              textAlign: TextAlign.center),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  height: double.maxFinite,
                  padding: EdgeInsets.only(left: 15.0, right: 15.0),
                  margin: EdgeInsets.only(top: 10.0),
                  child: Column(
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
                                      fontFamily: 'SukhumvitSet-Medium',
                                      fontSize: 18.0,
                                      color: Color.fromRGBO(31, 41, 84, 1),
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
                                          birthdayMessage = date!.day.toString() +
                                              "/" +
                                              date.month.toString() +
                                              "/" +
                                              date.year.toString();
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
                                          birthdayMessage,
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
                                      fontFamily: 'SukhumvitSet-Medium',
                                      fontSize: 18.0,
                                      color: Color.fromRGBO(31, 41, 84, 1),
                                    ),
                                  ),
                                  Container(
                                    width: double.maxFinite,
                                    child: TextField(
                                      textAlign: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      textInputAction: TextInputAction.next,
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontFamily: 'SukhumvitSet-Medium',
                                          color: Colors.black),
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              borderSide: BorderSide(
                                                  width: 0,
                                                  style: BorderStyle.none)),
                                          filled: true,
                                          fillColor:
                                              Color.fromRGBO(236, 235, 241, 1)),
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
                                fontFamily: 'SukhumvitSet-Medium',
                                fontSize: 18.0,
                                color: Color.fromRGBO(31, 41, 84, 1),
                              ),
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
                                fontFamily: 'SukhumvitSet-Medium',
                                fontSize: 18.0,
                                color: Color.fromRGBO(31, 41, 84, 1),
                              ),
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
                                fontFamily: 'SukhumvitSet-Medium',
                                fontSize: 18.0,
                                color: Color.fromRGBO(31, 41, 84, 1),
                              ),
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
                                    "โรงพยาบาลที่รักษาโรคกระดูกพรุน",
                                    style: TextStyle(
                                      fontFamily: 'SukhumvitSet-Medium',
                                      fontSize: 18.0,
                                      color: Color.fromRGBO(31, 41, 84, 1),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  child: TextField(
                                    textAlign: TextAlign.start,
                                    textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.text,
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontFamily: 'SukhumvitSet-Medium',
                                        color: Colors.black),
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            borderSide: BorderSide(
                                                width: 0,
                                                style: BorderStyle.none)),
                                        filled: true,
                                        fillColor:
                                            Color.fromRGBO(236, 235, 241, 1)),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10.0),
                                  child: Text(
                                    "วันที่เริ่มใช้ยารักษาโรคกระดูกพรุน",
                                    style: TextStyle(
                                      fontFamily: 'SukhumvitSet-Medium',
                                      fontSize: 18.0,
                                      color: Color.fromRGBO(31, 41, 84, 1),
                                    ),
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
                                        dateMessage = date!.day.toString() +
                                            "/" +
                                            date.month.toString() +
                                            "/" +
                                            date.year.toString();
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
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.only(top: 50.0),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: RaisedButton(
                                padding: EdgeInsets.only(
                                    top: 10, bottom: 10.0, left: 20, right: 20),
                                color: Colors.white,
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
                                        "บันทึก",
                                        style: TextStyle(
                                            color: Color.fromRGBO(31, 41, 84, 1),
                                            fontSize: 20,
                                            fontFamily: 'SukhumvitSet-Medium'),
                                      ),
                                    ),
                                  ],
                                ),
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
