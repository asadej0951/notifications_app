
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notifications_app/ui/Home.dart';

import '../../ListDataRegister.dart';
import 'ShowDataHome.dart';

class HomeMenu extends StatefulWidget {
  @override
  _HomeMenu createState() => _HomeMenu();
}

class _HomeMenu extends State<HomeMenu> {
  List<String> images = [
    'assets/images/1.png',
    'assets/images/2.png',
    'assets/images/3.png',
    'assets/images/4.png',
    'assets/images/5.png'
  ];
  List<String> _links = [
    'http://www.system-bonviva.com/document_for_app/item1.pdf',
    'http://www.system-bonviva.com/document_for_app/item2.pdf',
    'http://www.system-bonviva.com/document_for_app/item3.pdf',
    'http://www.system-bonviva.com/document_for_app/item4.pdf',
    'http://www.system-bonviva.com/document_for_app/item5.pdf'
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(227, 226, 243, 1),
      body: Container(
        child: Stack(
          children: <Widget>[
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(144, 143, 198, 1),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15.0),
                          bottomRight: Radius.circular(15.0))),
                  height: 105,
                  width: double.maxFinite,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      margin: EdgeInsets.only(top: 30),
                      width: double.maxFinite,
                      child: Text("รายการใช้ความรู้เกี่ยวกับ\nโรคกระดูกพรุน",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'SukhumvitSet-Medium'),
                          textAlign: TextAlign.center),
                    ),
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0))),
                    child: GridView.builder(
                        itemCount: images.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 4.0,
                            mainAxisSpacing: 4.0),
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ShowDataHome(_links[index])),
                              );
                            },
                            // onTap: () => _handleURLButtonPress(context, _links),
                            child: Card(
                              elevation: 5.0,
                              margin: EdgeInsets.all(10.0),
                              shape: BeveledRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15.0),
                                topRight: Radius.circular(15.0),
                                bottomLeft: Radius.circular(15.0),
                                bottomRight: Radius.circular(15.0),
                              )),
                              child: Container(
                                alignment: Alignment.center,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.asset(images[index]),
                                )
                              ),
                            ),
                          );
                        }),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 30, top: 15),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                        "ข้อมูล : ศูนย์ความเป็นเลิศโรคกระดูกพรุนเเละผู้สูงอายุ\nกลุ่มงานออร์โธปิดิกส์ โรงพยาบาลตำรวจ ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'SukhumvitSet-Medium'),
                        textAlign: TextAlign.center),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
  // void _handleURLButtonPress(BuildContext context, String url) {
  //   Navigator.push(context,
  //       MaterialPageRoute(builder: (context) => WebViewContainer(url)));
  // }

}
