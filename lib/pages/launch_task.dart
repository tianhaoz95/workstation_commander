import 'package:flutter/material.dart';

class LaunchTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Launch Task'),
      ),
      body: Center(
        child: Column(
          children: [Text('Launch Task')],
        ),
      ),
    );
  }
}
