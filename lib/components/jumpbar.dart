import 'package:flutter/material.dart';
import 'package:web/components/constants.dart';
import 'package:web/responsive.dart';
import 'package:web/components/menubar.dart';

class Jumpbar extends StatelessWidget {
  final String title;
  final String title2;
  final Function press;
  final Function press2;

  const Jumpbar(this.title, this.press, this.title2, this.press2, {Key key})
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
