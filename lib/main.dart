import 'package:flutter/material.dart';
import 'package:workstation_commander/navigation/delegate.dart';
import 'package:workstation_commander/navigation/parser.dart';

void main() {
  runApp(WorkstationCommanderApp());
}

class WorkstationCommanderApp extends StatefulWidget {
  @override
  _WorkstationCommanderAppState createState() => _WorkstationCommanderAppState();
}

class _WorkstationCommanderAppState extends State<WorkstationCommanderApp> {
  AppRouteDelegate _delegate = AppRouteDelegate();
  AppRouteInformationParser _parser = AppRouteInformationParser();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: _delegate,
      routeInformationParser: _parser,
    );
  }
}
