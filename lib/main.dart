import 'package:flutter/material.dart';
import 'package:web/components/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web/ladingpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vitabinary',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: PrimaryColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
      ),
      home: HomeScreen(),
    );
  }
}
