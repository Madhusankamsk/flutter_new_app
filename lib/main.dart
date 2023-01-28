import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_new/responsive/mobile_screen_layout.dart';
import 'package:flutter_new/responsive/web_screen_layout.dart';
import 'package:flutter_new/screens/login_screen.dart';
import 'package:flutter_new/screens/signup_screen.dart';
import 'package:flutter_new/utils/colors.dart';
import 'package:flutter_new/responsive/responsive_layout_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: 'AIzaSyCCF1KvlQrQ8peeC7DluD4NLYXtTfEHrbA',
        appId: '1:307486367069:web:0cb4cec2dccb5bc1d69cb4',
        messagingSenderId: '307486367069',
        projectId: 'final-project-44258',
        storageBucket: 'final-project-44258.appspot.com',
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
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
      // home: const ResponsiveLayout(
      //     mobileScreenLayout: MobileScreenLayout(),
      //     webScreenLayout: WebScreenLayout()));
      home: SignUpScreen(),
    );
  }
}
