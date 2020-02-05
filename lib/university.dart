class University {
  final String name;
  final String overview;
  final String city;
  final String acronym;
  final String phone;
  final int id;

  University({this.name, this.overview, this.city, this.acronym, this.phone,
      this.id});

  factory University.fromJSON(Map<String,dynamic> parsedJson){
    return University(
      name: parsedJson['name'],
      overview: parsedJson['overview'],
      city: parsedJson['city'],
      acronym: parsedJson['acronym'],
      phone: parsedJson['phone'],
      id: parsedJson['id']
    );
  }
}



