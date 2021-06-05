import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ShowDataHome extends StatefulWidget {
  final url;

  ShowDataHome(this.url);

  @override
  _ShowDataHome createState() => _ShowDataHome(this.url);
}

class _ShowDataHome extends State<ShowDataHome> {
  var _url;

  final _key = UniqueKey();

  _ShowDataHome(this._url);

  int position = 1;

  String yourPdfPath =
      'http://www.system-bonviva.com/document_for_app/item1.pdf';

  @override
  Widget build(BuildContext context) {
    _url = this._url;
    return Scaffold(
      backgroundColor: Color.fromRGBO(227, 226, 243, 1),
      body: Container(
        child: Stack(
          children: [
            Column(
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
                      Expanded(
                        flex: 10,
                        child: Container(
                          width: double.maxFinite,
                          margin: EdgeInsets.only(top: 20.0, left: 10.0),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("เนื้อหา",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontFamily: 'SukhumvitSet-Medium'),
                                textAlign: TextAlign.center),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    flex: 10,
                    child: Container(
                      width: double.maxFinite,
                      height: double.maxFinite,
                      child: IndexedStack(
                        index: position,
                        children: [
                          WebView(
                            initialUrl:
                                ('https://docs.google.com/viewer?embedded=true&url=$_url'),
                            javascriptMode: JavascriptMode.unrestricted,
                            onPageStarted:(String url) {
                              print('Page started loading: $url');
                              setState(() {
                                position = 1;
                              });
                            },
                            onPageFinished: (String url) {
                              print('Page started loading: $url');
                              setState(() {
                                position = 0;
                              });
                            },
                            gestureNavigationEnabled: true,
                          ),
                          Container(
                            child: Center(child: CircularProgressIndicator()),
                          ),
                        ],
                      ),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
