import 'package:contra/screens/onboarding/friends.dart';
import 'package:contra/screens/profile.dart';
import 'package:contra/screens/splash-screen.dart';
import 'package:contra/screens/verification.dart';
import 'package:contra/theme/custom-theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //   statusBarBrightness: Brightness.dark,
    //   statusBarColor: Colors.black.withOpacity(0.2),
    //   statusBarIconBrightness: Brightness.light,
    // ));
    return MaterialApp(
      title: 'Flutter Demo',
      theme: customTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {"/": (context) => SafeArea(child: SplashScreen())},
      // home: SafeArea(
      //   child: Scaffold(body: SplashScreen()),
      // )
    );
  }
}
