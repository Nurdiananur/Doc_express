
import 'package:doc_express/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      color: Colors.indigo[900],
    );
  }
}