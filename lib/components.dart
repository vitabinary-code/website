import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web/constants.dart';
import 'package:web/homescreen.dart';
import 'package:web/page2.dart';
import 'package:web/responsive.dart';

/*--------------------  Side menu --------------------------------------- */
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
              NavItem(title: 'Home', tapEvent: () {}),
              SizedBox(
                width: 30,
              ),
              NavItem(title: 'Coding', tapEvent: () {}),
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

/*-------------------Footer----------------------- */
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

/*-------------------------------------------Header------------------------------------------- */
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

class Jumbotron extends StatelessWidget {
  final String title;
  final String title2;
  final Function press;
  final Function press2;

  const Jumbotron(this.title, this.press, this.title2, this.press2, {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: !isMobile(context) ? 40 : 0),
              child: Column(
                mainAxisAlignment: !isMobile(context)
                    ? MainAxisAlignment.start
                    : MainAxisAlignment.center,
                crossAxisAlignment: !isMobile(context)
                    ? CrossAxisAlignment.start
                    : CrossAxisAlignment.center,
                children: <Widget>[
                  if (isMobile(context))
                    Image.asset(
                      'images/main.png',
                      height: size.height * 0.3,
                    ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Learn Coding',
                          style: TextStyle(
                            fontSize: isDesktop(context) ? 64 : 32,
                            fontWeight: FontWeight.w800,
                            color: TextColor,
                          ),
                        ),
                        TextSpan(
                          text: ' Online Free!',
                          style: TextStyle(
                            fontSize: isDesktop(context) ? 64 : 32,
                            fontWeight: FontWeight.w800,
                            color: PrimaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Programming',
                    style: TextStyle(
                        fontSize: isDesktop(context) ? 64 : 32,
                        fontWeight: FontWeight.w800),
                  ),
                  Text(
                    'is funny!',
                    style: TextStyle(
                        fontSize: isDesktop(context) ? 64 : 32,
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Why so serious ? ,Let's do it.",
                    textAlign:
                        isMobile(context) ? TextAlign.center : TextAlign.start,
                    style: TextStyle(
                      fontSize: isDesktop(context) ? 64 : 32,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Wrap(
                    runSpacing: 10,
                    children: <Widget>[
                      MainButton(
                        title: title,
                        tapEvent: press,
                        color: PrimaryColor,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      MainButton(
                        title: title2,
                        tapEvent: press2,
                        color: SecondaryColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          if (isDesktop(context) || isTab(context))
            Expanded(
              child: Image.asset(
                'images/main.png',
                height: size.height * 0.7,
              ),
            ),
        ],
      ),
    );
  }
}

class MainButton extends StatelessWidget {
  final String title;
  final GestureTapCallback tapEvent;
  final Color color;

  const MainButton({
    Key key,
    @required this.title,
    @required this.tapEvent,
    @required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: TextButton(
        onPressed: tapEvent,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(color),
            padding: MaterialStateProperty.all(
                EdgeInsets.symmetric(horizontal: 35, vertical: 15))),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
