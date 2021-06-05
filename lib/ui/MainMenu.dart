import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notifications_app/ui/menu/notification/NotificationClass.dart';

import 'ButtonRegister.dart';
import 'Home.dart';
import 'ListDataRegister.dart';
import 'menu/home/HomeMenu.dart';
import 'menu/me/Me.dart';
import 'menu/notification/NotificationClass.dart';
import 'menu/treatment/Treatment.dart';

class MainMenu extends StatefulWidget {
  @override
  _MainMenu createState() => _MainMenu();
}

class _MainMenu extends State<MainMenu> {
  int _currentIndex = 0;
  final tabs = [
    MaterialApp(
      home: HomeMenu(),
    ),
    MaterialApp(
      home: NotificationClass(),
    ),
    MaterialApp(
      home: Treatment(),
    ),
    MaterialApp(
      home: Me(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(227, 226, 243, 1),
      body: Container(
        child: tabs[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromRGBO(144, 143, 198, 1),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text(
              'หน้าแรก',
                style: TextStyle(fontFamily: "SukhumvitSet-Bold")
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_alert,
            ),
            title: Text('ตั้งค่าเตือน',
                style: TextStyle(fontFamily: "SukhumvitSet-Bold")
            ),

          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.view_headline,
            ),
            title: Text(
              'บันทึกการรักษา',
                style: TextStyle(fontFamily: "SukhumvitSet-Bold")
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
            ),
            title: Text(
              'ข้อมูลส่วนตัว',
                style: TextStyle(fontFamily: "SukhumvitSet-Bold")
            ),


          ),
        ],
        selectedLabelStyle: TextStyle(fontSize: 10,fontFamily: 'SukhumvitSet-Bold'),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
