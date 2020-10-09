## Example

### STEP: 1
Initialize ShareApps with your secretKey, appId and registered email address in main.dart file.

```dart
import 'package:flutter/material.dart';
import 'package:share_apps/share_apps.dart';

void main() {
  ShareApps.init(
        appId: 'XXXXXXXXXXXXXXXXXXX',//(AppId from)royalty.shareapps.net
        secreteKey: 'XXXXXXXXXXXXXX',//(secreteKey from)royalty.shareapps.net
        email:'XXX@XXX.com'); //(Email Address which registered in )royalty.shareapps.net (It required for email invitation)
  runApp(MyApp());
}
```

### STEP: 2 
### There are two methods for send invitation 
### 1.sendInvitation() (This method will use when need to ask details from user)
### 2.sendInvitationInBackground() (This method will use when you have user details and pass it in background (User have to select Country and Language).)

## NOTE:
### - Use valid mobile number must with country code.
### - Use valid email address.

## For more details please take look example.
### sendInvitation()

```dart
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
```

### sendInvitationInBackground()

```dart
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Share App Demo'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Invite Friends in Background'),
          onPressed: () {
            ShareApps.sendInvitationInBackground(
                                context: context,
                                firstName: 'XXXX',//User First Name
                                lastName: 'XXXX',//User LastName
                                email: 'XXX@XXX.com',//User Email Address
                                countryCode: 'US',// User Country
                                language: 'English',//User Language
                                number:'+1000000000'); //User Mobile Number With Country Code
          },
        ),
      ),
    );
  }
}
```

<a href="https://github.com/Prashant09mca/flutter-share-apps-SDK-example/blob/master/COUNTRY.md">View Country List</a>
