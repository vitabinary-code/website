import 'package:flutter/material.dart';
import 'package:web/components/jumpbar.dart';
import 'package:web/codingpage.dart';
import 'package:web/components/sidemenu.dart';
import 'package:web/components/footermenu.dart';
import 'package:web/components/headermenu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      endDrawer: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 300),
        child: SideMenu(),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: size.width,
            constraints: BoxConstraints(
              maxHeight: size.height,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Header(),
                Jumpbar("Watch Video", () {}, "Get Started", () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen2()));
                }),
                Footer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
