import 'package:flutter/material.dart';

const PrimaryColor = Color.fromRGBO(133, 88, 255, 1);
const SecondaryColor = Color.fromRGBO(255, 88, 88, 1);
const TextColor = Color(0XFF282828);
Size size;

class NavItem extends StatelessWidget {
  final String title;
  final GestureTapCallback tapEvent;

  const NavItem({
    Key key,
    @required this.title,
    @required this.tapEvent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tapEvent,
      hoverColor: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          title,
          style: TextStyle(
            color: TextColor,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
