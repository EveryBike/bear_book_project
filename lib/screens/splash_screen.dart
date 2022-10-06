import 'package:flutter/material.dart';
import 'package:flutter_book/screens/list_screen.dart';
import 'package:flutter_book/screens/login_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  String message = "SplashScreen";

  @override
  void initState() {
    super.initState();
    if (isLoggedIn()) {
      _goToList();
    } else {
      _goToLogin();
    }
  }

  void _goToLogin() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => LoginScreen(),
    ));
  }

  void _goToList() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => ListScreen(),
    ));
  }

  bool isLoggedIn() {
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(message),
    );
  }
}
