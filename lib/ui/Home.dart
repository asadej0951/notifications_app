import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ButtonRegister.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _counter = 10;


  @override
  initState() {
    super.initState();
    new Timer(const Duration(seconds: 5), onClose);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(171, 170, 213, 1),
      body: Align(
          alignment: Alignment(0.0, 0.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                  image: AssetImage('assets/images/logo.png'),
                  height: 190,
                  width: 190,
                ),
                Center(
                  child: Text(
                    "เเอพลิเคชั่น BV เตือนกินยา",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontFamily: 'SukhumvitSet-Medium'),
                  ),
                )
              ],
            ),
          )),

    );
  }
  void onClose() {
    // Navigator.push(this.context, CupertinoPageRoute(builder: (context) {
    //   return ButtonRegister();
    // }));
    Navigator.of(this.context).pushReplacement(new PageRouteBuilder(
        maintainState: true,
        opaque: true,
        pageBuilder: (context, _, __) => new ButtonRegister(),
        transitionDuration: const Duration(seconds: 2),
        transitionsBuilder: (context, anim1, anim2, child) {
          return new FadeTransition(
            child: child,
            opacity: anim1,
          );
        }));
  }
}

