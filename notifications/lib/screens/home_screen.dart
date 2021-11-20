import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Scaffold(
          appBar: AppBar(title: Text('Home')),
          body: Center(
            child: Text('Home Screen'),
          ),
        ),
      ),
    );
  }
}
