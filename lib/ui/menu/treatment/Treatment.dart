import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notifications_app/ui/menu/treatment/SaveTreatment.dart';

class Treatment extends StatefulWidget {
  @override
  _Treatment createState() => _Treatment();
}

class _Treatment extends State<Treatment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(227, 226, 243, 1),
      body: Stack(
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
                    child: Text("บันทึกข้อมูลการรักษา",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: 'SukhumvitSet-Medium'),
                        textAlign: TextAlign.center),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(right: 15,bottom: 15),
            child: Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                backgroundColor:Color.fromRGBO(0, 167, 226, 1) ,
                child: Icon(
                  Icons.add,
                  color: Color.fromRGBO(227, 226, 243, 1),
                  size: 50.0,
                ),
                onPressed: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (context) {
                        return SaveTreatment();
                      }));
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
