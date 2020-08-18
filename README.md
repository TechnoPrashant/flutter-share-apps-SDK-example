## Example

### STEP: 1
Initialize ShareApps with your secretKey and appId in main.dart file.

```dart
import 'package:flutter/material.dart';
import 'package:share_apps/share_apps.dart';

void main() {
  ShareApps.init(appId: 'XXXXXXXXXX', secreteKey: 'XXXXXXXXXXXX');
  runApp(MyApp());
}
```

### STEP: 2 
### There are two methods for send invitation 

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
          child: Text('Invite Friends'),
          onPressed: () {
            ShareApps.sendInvitationInBackground(
                            context: context,
                            firstName: 'ABC',
                            lastName: 'XYZ',
                            countryName: 'United States',
                            email: 'xyz@gmail.com',
                            language: 'ENGLISH',
                            number: '444123456'
                          );
          },
        ),
      ),
    );
  }
}
```
