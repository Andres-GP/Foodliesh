import 'package:flutter/material.dart';
import 'package:hello_world/splashScreen/splash_screen.dart';

Future<void> main() async 
{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sellers App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MySplashScreen(),
    );
  }
}

