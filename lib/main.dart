import 'package:flutter/material.dart';
import 'package:flutter_new/responsive/mobile_screen_layout.dart';
import 'package:flutter_new/responsive/web_screen_layout.dart';
import 'package:flutter_new/utils/colors.dart';
import 'package:flutter_new/responsive/responsive_layout_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: mobileBackgroundColor,
        ),
        home: const ResponsiveLayout(
            mobileScreenLayout: MobileScreenLayout(),
            webScreenLayout: WebScreenLayout()));
  }
}
