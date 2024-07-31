import 'package:flutter/material.dart';

import 'login_screen.dart';

class LauncherPage extends StatefulWidget {
  const LauncherPage({super.key});

  @override
  State<LauncherPage> createState() => _LauncherPageState();
}

class _LauncherPageState extends State<LauncherPage> {

  @override
  void initState() {

    Future.delayed(Duration.zero,(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
