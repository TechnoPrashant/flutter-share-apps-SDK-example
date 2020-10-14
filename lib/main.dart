import 'package:flutter/material.dart';
import 'package:share_apps/share_apps.dart';

void main() {
  ShareApps.init(
      appId: 'XXXXXX',
      // (AppId from)royalty.shareapps.net
      secreteKey: 'XXXXXXXXXXXXXXXXXX',
      // (secreteKey from)royalty.shareapps.net
      email: 'XXXXXX@xxx.com',
      //(Email Address which registered in )royalty.shareapps.net (It required for email invitation)
      app_name:
          'XXXXXX'); //(Enter Your app name in which you integrate ShareApp SDK)
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
                    countryCode: 'US',
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
