import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:university_app/university.dart';

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

Future<String> _loadUniversityAsset() async {
  return await rootBundle.loadString('assets/university.json');
}

Future<List<University>> loadUniversity() async {
  String jsonString = await _loadUniversityAsset();
  final jsonResponse = jsonDecode(jsonString);

  List<University> _u = [];
  for (var uni in jsonResponse) {
    _u.add(University.fromJSON(uni));
  }
  return _u;
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: MyList(_university),
    );
  }

  List<University> _university;
  String txt = '123';
  @override
  void initState() {
    loadUniversity().then((u) => setState(() {
          _university = u;
        }));
//  print(_university);
  }
}

class MyList extends StatelessWidget {
  List<University> _listUni;

  MyList(this._listUni);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: _listUni.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(_listUni[index].name),
          leading: Icon(Icons.location_city),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {},
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
          child: Divider(),
        );
      },
    );
  }
}
