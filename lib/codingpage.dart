import 'package:flutter/material.dart';
import 'package:web/usermunu.dart';

import 'package:web/components/headermenu.dart';
import 'package:web/components/sidemenu.dart';
import 'package:web/components/footermenu.dart';

class HomeScreen2 extends StatelessWidget {
  const HomeScreen2({Key key}) : super(key: key);

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
                GidMenu(),
                Footer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
