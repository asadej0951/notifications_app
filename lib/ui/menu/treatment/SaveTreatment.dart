import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SaveTreatment extends StatefulWidget {
  @override
  _SaveTreatment createState() => _SaveTreatment();
}

class _SaveTreatment extends State<SaveTreatment> {
  var dateMessage = "";
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
                          child: Text("บันทึกข้อมูลการรักษา",
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
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          margin: EdgeInsets.only(top: 15, right: 15),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12.0)),
                          width: 100.0,
                          height: 100.0,
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  width: double.maxFinite,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(31, 41, 84, 1),
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(12.0),
                                          bottomRight: Radius.circular(12.0))),
                                  child: Center(
                                    child: Text(
                                      "ถ่ายรูป/อัปโหลดรูป",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                          fontFamily: 'SukhumvitSet-Medium'),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Row(
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
                                "ระบุโรงพยาบาล",
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
                                            width: 0, style: BorderStyle.none)),
                                    filled: true,
                                    fillColor:
                                        Color.fromRGBO(236, 235, 241, 1)),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10.0),
                              child: Text(
                                "วันที่ตรวจ",
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
                            Container(
                              margin: EdgeInsets.only(top: 10.0),
                              child: Text(
                                "หมายเหตุ",
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
                                maxLines: 3,
                                textAlign: TextAlign.start,
                                keyboardType: TextInputType.text,
                                textInputAction: TextInputAction.done,
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontFamily: 'SukhumvitSet-Medium',
                                    color: Colors.black),
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        borderSide: BorderSide(
                                            width: 0, style: BorderStyle.none)),
                                    filled: true,
                                    fillColor:
                                        Color.fromRGBO(236, 235, 241, 1)),
                              ),
                            ),
                            Container(
                              width: double.maxFinite,
                              margin: EdgeInsets.only(top: 50.0, bottom: 20.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 5,
                                    child: Container(
                                      margin: EdgeInsets.only(right: 5),
                                      width: double.maxFinite,
                                      child: RaisedButton(
                                        padding: EdgeInsets.only(
                                            top: 10,
                                            bottom: 10.0,
                                            left: 20,
                                            right: 20),
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30.0)),
                                        onPressed: () {
                                          // Navigator.push(context,
                                          //     CupertinoPageRoute(builder: (context) {
                                          //       return MainMenu();
                                          //     }));
                                        },
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              child: Text(
                                                "บันทึก",
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        31, 41, 84, 1),
                                                    fontSize: 20,
                                                    fontFamily:
                                                        'SukhumvitSet-Medium'),
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
                                            top: 10,
                                            bottom: 10.0,
                                            left: 20,
                                            right: 20),
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30.0)),
                                        onPressed: () {
                                          //สั้งปิดหน้า
                                          Navigator.pop(context);
                                        },
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              child: Text(
                                                "ยกเลิก",
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        31, 41, 84, 1),
                                                    fontSize: 20,
                                                    fontFamily:
                                                        'SukhumvitSet-Medium'),
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
                      )
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
