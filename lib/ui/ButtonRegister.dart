import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notifications_app/ui/ListDataRegister.dart';

class ButtonRegister extends StatefulWidget {
  @override
  _ButtonRegister createState() => _ButtonRegister();
}

class _ButtonRegister extends State<ButtonRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(171, 170, 213, 1),
      body: Center(
        child: Container(
          width: 300,
          height: 60,
          child: RaisedButton(
            splashColor: Color.fromRGBO(21, 46, 139, 1),
            color: Color.fromRGBO(31, 41, 84, 1),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            onPressed: () {
              Navigator.push(context, CupertinoPageRoute(builder: (context) {
                return ListDataRegister();
              }));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Text(
                    "ลงทะเบียน",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'SukhumvitSet-Medium'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(4, 0, 10, 0),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
