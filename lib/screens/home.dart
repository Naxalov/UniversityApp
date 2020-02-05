import 'package:flutter/material.dart';

final europeanCountries = [
  'Albania',
  'Andorra',
  'Armenia',
  'Austria',
  'Azerbaijan',
  'Belarus',
  'Belgium',
  'Bosnia and Herzegovina',
  'Bulgaria',
  'Croatia',
  'Cyprus',
  'Czech Republic',
  'Denmark',
  'Estonia',
  'Finland',
  'France',
  'Georgia',
  'Germany',
  'Greece',
  'Hungary',
  'Iceland',
  'Ireland',
  'Italy',
  'Kazakhstan',
  'Kosovo',
  'Latvia',
  'Liechtenstein',
  'Lithuania',
  'Luxembourg',
  'Macedonia',
  'Malta',
  'Moldova',
  'Monaco',
  'Montenegro',
  'Netherlands',
  'Norway',
  'Poland',
  'Portugal',
  'Romania',
  'Russia',
  'San Marino',
  'Serbia',
  'Slovakia',
  'Slovenia',
  'Spain',
  'Sweden',
  'Switzerland',
  'Turkey',
  'Ukraine',
  'Uzbekistan',
  'United Kingdom',
  'Vatican City'
];

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: MyList(),
    );
  }
}

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: europeanCountries.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(europeanCountries[index]),
          leading: Icon(Icons.location_city),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: (){},
        );
      }, separatorBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 0,horizontal: 15),
          child: Divider(),
        );
    },
    );
  }
}
