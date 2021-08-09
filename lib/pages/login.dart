import 'package:flutter/material.dart';
import 'package:workstation_commander/components/custom_icons.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(CustomIcons.github_circled),
                label: Text('Login with GitHub'))
          ],
        ),
      ),
    );
  }
}
