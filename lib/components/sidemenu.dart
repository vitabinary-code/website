import 'package:flutter/material.dart';
import 'package:web/components/navitem.dart';
import 'package:web/ladingpage.dart';
import 'package:web/codingpage.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: Colors.white,
      child: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              NavItem(
                  title: 'Home',
                  tapEvent: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  }),
              SizedBox(
                width: 30,
              ),
              NavItem(
                  title: 'Coding',
                  tapEvent: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen2()));
                  }),
              SizedBox(
                width: 30,
              ),
              NavItem(title: 'Contact us', tapEvent: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
