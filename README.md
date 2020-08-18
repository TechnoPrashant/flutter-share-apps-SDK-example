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
### 1.sendInvitation() (This method will use when need to ask details from user)
### 2.sendInvitationInBackground() (This method will use when you have user details and pass it in background without user interface.)

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


### Country List
| Afghanistan 	| Akrotiri 	| Albania 	| Algeria 	| American Samoa 	| Andorra 	| Angola 	| Anguilla 	| Antarctica 	| Antigua and Barbuda 	|  	|
|-	|-	|-	|-	|-	|-	|-	|-	|-	|-	|-	|
| Argentina 	| Armenia 	| Aruba 	| Ashmore and Cartier Islands 	| Australia 	| Austria 	| Azerbaijan 	| Bahamas The 	| Bahrain 	| Bangladesh 	|  	|
| Barbados 	| Bassas da India 	| Belarus 	| Belgium 	| Belize 	| Benin 	| Bermuda 	| Bhutan 	| Bolivia 	| Bosnia and Herzegovina 	|  	|
| Botswana 	| Bouvet Island 	| Brazil 	| British Indian Ocean Territory 	| British Virgin Islands 	| Brunei 	| Bulgaria 	| Burkina Faso 	| Burma 	| Burundi 	|  	|
| Cambodia 	| Cameroon 	| Canada 	| Cape Verde 	| Cayman Islands 	| Central African Republic 	| Chad 	| Chile 	| China 	| Christmas Island 	|  	|
| Clipperton Island 	| Cocos (Keeling) Islands 	| Colombia 	| Comoros 	| Congo Democratic Republic of the 	| Congo Republic of the 	| Cook Islands 	| Coral Sea Islands 	| Costa Rica 	| Ivory Coast 	|  	|
| Croatia 	| Cuba 	| Cyprus 	| Czech Republic 	| Denmark 	| Dhekelia 	| Djibouti 	| Dominica 	| Dominican Republic 	| Ecuador 	|  	|
| Egypt 	| El Salvador 	| Equatorial Guinea 	| Eritrea 	| Estonia 	| Ethiopia 	| Europa Island 	| Falkland Islands (Islas Malvinas) 	| Faroe Islands 	| Fiji 	|  	|
| Finland 	| France 	| French Guiana 	| French Polynesia 	| French Southern and Antarctic Lands 	| Gabon 	| Gambia The 	| Gaza Strip 	| Georgia 	| Germany 	|  	|
| Ghana 	| Gibraltar 	| Glorioso Islands 	| Greece 	| Greenland 	| Grenada 	| Guadeloupe 	| Guam 	| Guatemala 	| Guernsey 	|  	|
| Guinea 	| Guinea-Bissau 	| Guyana 	| Haiti 	| Heard Island and McDonald Islands 	| Holy See (Vatican City) 	| Honduras 	| Hong Kong 	| Hungary 	| Iceland 	|  	|
| India 	| Indonesia 	| Iran 	| Iraq 	| Ireland 	| Isle of Man 	| Israel 	| Italy 	| Jamaica 	| Jan Mayen 	|  	|
| Japan 	| Jersey 	| Jordan 	| Juan de Nova Island 	| Kazakhstan 	| Kenya 	| Kiribati 	| Korea North 	| Korea South 	| Kuwait 	|  	|
| Kyrgyzstan 	| Laos 	| Latvia 	| Lebanon 	| Lesotho 	| Liberia 	| Libya 	| Liechtenstein 	| Lithuania 	| Luxembourg 	|  	|
| Macau 	| Macedonia 	| Madagascar 	| Malawi 	| Malaysia 	| Maldives 	| Mali 	| Malta 	| Marshall Islands 	| Martinique 	|  	|
| Mauritania 	| Mauritius 	| Mayotte 	| Mexico 	| Micronesia Federated States of 	| Moldova 	| Monaco 	| Mongolia 	| Montserrat 	| Morocco 	|  	|
| Mozambique 	| Namibia 	| Nauru 	| Navassa Island 	| Nepal 	| Netherlands 	| Netherlands Antilles 	| New Caledonia 	| New Zealand 	| Nicaragua 	|  	|
| Niger 	| Nigeria 	| Niue 	| Norfolk Island 	| Northern Mariana Islands 	| Norway 	| Oman 	| Pakistan 	| Palau 	| Panama 	|  	|
| Papua New Guinea 	| Paracel Islands 	| Paraguay 	| Peru 	| Philippines 	| Pitcairn Islands 	| Poland 	| Portugal 	| Puerto Rico 	| Qatar 	|  	|
| Reunion 	| Romania 	| Russia 	| Rwanda 	| Saint Helena 	| Saint Kitts and Nevis 	| Saint Lucia 	| Saint Pierre and Miquelon 	| Saint Vincent and the Grenadines 	| Samoa 	|  	|
| San Marino 	| Sao Tome and Principe 	| Saudi Arabia 	| Senegal 	| Serbia 	| Seychelles 	| Sierra Leone 	| Singapore 	| Slovakia 	| Slovenia 	|  	|
| Solomon Islands 	| Somalia 	| South Africa 	| South Georgia and the South Sandwich Isl 	| Spain 	| Spratly Islands 	| Sri Lanka 	| Sudan 	| Suriname 	| Svalbard 	|  	|
| Swaziland 	| Sweden 	| Switzerland 	| Syria 	| Taiwan 	| Tajikistan 	| Tanzania 	| Thailand 	| Timor-Leste 	| Togo 	|  	|
| Tokelau 	| Tonga 	| Trinidad and Tobago 	| Tromelin Island 	| Tunisia 	| Turkey 	| Turkmenistan 	| Turks and Caicos Islands 	| Tuvalu 	| Uganda 	|  	|
| Ukraine 	| United Arab Emirates 	| United Kingdom 	| United States 	| Uruguay 	| Uzbekistan 	| Vanuatu 	| Venezuela 	| Vietnam 	| Virgin Islands 	|  	|
| Wake Island 	| Wallis and Futuna 	| West Bank 	| Western Sahara 	| Yemen 	| Zambia 	| Zimbabwe 	| Curacao 	| Palestine 	| Montenegro 	| Myanmar 	|

