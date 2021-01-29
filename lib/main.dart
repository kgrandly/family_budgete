// import 'package:family_budgete/helpers/custom_page_transition.dart';
import 'package:flutter/material.dart';

import 'package:family_budgete/screens/log_in_screen.dart';
import 'package:family_budgete/screens/sign_up_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Family Budgete',
      theme: ThemeData(
          // Apply the dark theme by default.
          brightness: Brightness.dark,
          // This is the theme of your application.
          accentColor: Colors.orange,
          // This makes the visual density adapt to the platform that you run
          // the app on. For desktop platforms, the controls will be smaller and
          // closer together (more dense) than on mobile platforms.
          visualDensity: VisualDensity.adaptivePlatformDensity,
          // Setting transition animation between screens.
          pageTransitionsTheme: PageTransitionsTheme(
            builders: {
              TargetPlatform.android: CupertinoPageTransitionsBuilder(),
            },
          )),
      routes: {
        LogInScreen.routerName: (context) => LogInScreen(),
        SignUpScreen.routerName: (context) => SignUpScreen(),
      },
    );
  }
}
