class University {
  final String name;
  final String id;

  University({this.name, this.id});
  factory University.fromJSON(Map<String,dynamic> parsedJson){
    return University(
      name: parsedJson['name'],
      id: parsedJson['id']
    );
  }
}

