import 'package:flutter/material.dart';
import 'package:share_apps/share_apps.dart';

void main() {
  ShareApps.init(
      appId: '15539901308027672219',
      secreteKey: '5ca001f255007786922623',
      email: 'john@debsmail.com');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('Invite Friends'),
              onPressed: () {
                ShareApps.sendInvitation(context: context);
              },
            ),
            RaisedButton(
              child: Text('Invite Friends Background'),
              onPressed: () {
                ShareApps.sendInvitationInBackground(
                    context: context,
                    firstName: 'ABC',
                    lastName: 'XYZ',
                    email: 'xyz@gmail.com',
                    countryName: 'India',
                    language: 'Hindi',
                    number: '444123456');
              },
            ),
          ],
        ),
      ),
    );
  }
}
