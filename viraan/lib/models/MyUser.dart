class MyUser {
  String email, name, address;

  MyUser({this.email, this.name, this.address});

  MyUser.fromMap(Map<String, dynamic> map) {
    email = map['e'];
    name = map['n'];
    address =map['a'];
  }

  Map<String, dynamic> toMap() => {
    'e': email,
    'n': name,
    'a':address,
  };
}