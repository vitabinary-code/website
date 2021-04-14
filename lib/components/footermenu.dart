import 'package:flutter/material.dart';
import 'package:web/responsive.dart';
import 'package:web/components/navitem.dart';

class Footer extends StatelessWidget {
  const Footer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (!isMobile(context)) ? DesktopFooter() : MobileFooter();
  }
}

class DesktopFooter extends StatelessWidget {
  const DesktopFooter({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Text(
                'All Right Reserved',
                style: TextStyle(
                  fontSize: 10,
                ),
              )),
          Expanded(
              flex: 2,
              child: Row(
                children: <Widget>[
                  NavItem(
                    title: 'Facebook',
                    tapEvent: () {},
                  ),
                  NavItem(
                    title: 'Youtube',
                    tapEvent: () {},
                  ),
                  NavItem(
                    title: 'Github',
                    tapEvent: () {},
                  ),
                ],
              ))
        ],
      ),
    );
  }
}

class MobileFooter extends StatelessWidget {
  const MobileFooter({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Column(
        children: <Widget>[
          Text(
            'All Right Reserved',
            style: TextStyle(fontSize: 10),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              NavItem(
                title: 'Facebook',
                tapEvent: () {},
              ),
              NavItem(
                title: 'Youtube',
                tapEvent: () {},
              ),
              NavItem(
                title: 'Github',
                tapEvent: () {},
              )
            ],
          ),
        ],
      ),
    );
  }
}
