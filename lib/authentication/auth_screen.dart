import 'package:flutter/material.dart';
import 'package:hello_world/authentication/login.dart';
import 'package:hello_world/authentication/register.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({ Key? key }) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              //TODO implement Color
              color: Colors.indigo
              ),
          ),
          title: const Text(
            "Foodliesh",
            style: TextStyle(
              fontSize: 60,
              color: Colors.white,
              //TODO implement font family
              fontFamily: "",
            ),
          ),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.lock, color: Colors.white,),
                text:  "Login",
              ),
              Tab(
                icon: Icon(Icons.person, color: Colors.white),
                text:  "Register",
              ),
          ],
          indicatorColor: Colors.white38,
          indicatorWeight: 6,
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            //TODO implement color
            color: Colors.red,
            ),
            child: const TabBarView(
              children: [
                LoginScreen(),
                RegisterScreen(),
              ],
              ),
          ),
        )
      );
  }
}