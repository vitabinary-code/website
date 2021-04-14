import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web/ladingpage.dart';
import 'package:web/codingpage.dart';
import 'package:web/components/navitem.dart';

import 'package:web/responsive.dart';

class Header extends StatelessWidget {
  const Header({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        child: Row(
          children: <Widget>[
            Image.asset(
              'images/logo2.png',
              width: 250,
            ),
            SizedBox(width: 50),
            Text(
              isDesktop(context)
                  ? "What the fu** ,The bug are everywhere."
                  : '',
              style: GoogleFonts.reenieBeanie(
                fontSize: 32,
              ),
            ),
            Spacer(),
            if (!isMobile(context))
              Row(
                children: <Widget>[
                  NavItem(
                      title: 'Home',
                      tapEvent: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      }),
                  NavItem(
                      title: 'Coding',
                      tapEvent: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen2()));
                      }),
                  NavItem(title: 'Contact us', tapEvent: () {}),
                ],
              ),
            if (isMobile(context))
              IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  })
          ],
        ));
  }
}
