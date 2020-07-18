import 'package:login_page/screens/login_screen.dart';
import 'package:login_page/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.grey[900],
          accentColor: Colors.white,
          appBarTheme: AppBarTheme(
              color: Colors.grey[900],
              textTheme: TextTheme(
                  headline5: TextStyle(color: Colors.white, fontSize: 22)))),
      initialRoute: '/login',
      routes: <String, WidgetBuilder>{
        '/login': (context) => LoginScreen(),
        '/signup': (context) => SignupScreen()
      },
    );
  }
}
