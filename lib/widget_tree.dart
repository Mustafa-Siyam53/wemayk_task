import 'package:flutter/material.dart';
import 'package:wemayk_task/Ui/pages/home.dart';
import 'package:wemayk_task/auth.dart';
import './pages/home_page.dart';
import './pages/login_register_page.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return HomePageUi();
        } else {
          return const LoginPage();
        }
      },
    );
  }
}
