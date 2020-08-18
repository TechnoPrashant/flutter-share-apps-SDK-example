import 'package:flutter/material.dart';
import 'package:share_apps/share_apps.dart';

void main() {
  ShareApps.init(AppId: 'XXXXXXXXXX', secrateKey: 'XXXXXXXXXXXX');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Share App Demo'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Invite Friends'),
          onPressed: () {
            ShareApps.sendInvitation(context: context);
          },
        ),
      ),
    );
  }
}
