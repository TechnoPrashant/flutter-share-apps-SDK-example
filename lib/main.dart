import 'package:flutter/material.dart';
import 'package:share_apps/share_apps.dart';

void main() {
  ShareApps.init(
      appId: 'XXXXXXXXXXXXXXXXXXX',
      //(AppId from)royalty.shareapps.net
      secreteKey: '5ca001f255007786922623',
      //(secreteKey from)royalty.shareapps.net
      email:
          'XXX@XXX.com'); //(Email Address which registered in )royalty.shareapps.net (It required for email invitation)
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
                    firstName: 'XXXX',
                    //User First Name
                    lastName: 'XXXX',
                    //User LastName
                    email: 'XXX@XXX.com',
                    //User Email Address
                    countryName: 'United State',
                    // User Country
                    language: 'English',
                    //User Language
                    number:
                        '+1000000000'); //User Mobile Number With Country Code
              },
            ),
          ],
        ),
      ),
    );
  }
}
