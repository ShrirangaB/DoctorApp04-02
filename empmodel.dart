// import 'dart:convert';

// List<Employee> employeeFromJson(String str) =>
//     List<Employee>.from(json.decode(str).map((x) => Employee.fromJson(x)));

// String employeeToJson(List<Employee> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class Employee {
//   int id;
//   String email;
//   String username;
//   String name;
//   Address address;

//   Employee({this.id, this.email, this.username, this.name, this.address});

//   factory Employee.fromJson(Map<String, dynamic> json) => Employee(
//         id: json["id"],
//         email: json["email"],
//         username: json["username"],
//         name: json["name"],
//         address:
//             json["address"] != null ? Address.fromJson(json['address']) : null,
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "email": email,
//         "username": username,
//         "name": name,
//         "address": address,
//       };
// }

// // List<Address> addressFromJson(String str) =>
// //     List<Address>.from(json.decode(str).map((x) => Address.fromJson(x)));

// // String adressToJson(List<Address> data) =>
// //     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class Address {
//   String id;
//   String street;
//   String suite;
//   String city;
//   String zipcode;

//   Address({this.id, this.street, this.suite, this.city, this.zipcode});

//   factory Address.fromJson(Map<String, dynamic> json) => Address(
//       id: json['id'],
//       street: json['street'],
//       suite: json['suite'],
//       city: json['city'],
//       zipcode: json['zipcode']);

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "street": street,
//         "suite": suite,
//         "city": city,
//         "zipcode": zipcode,
//       };
// }

import 'dart:convert';

List<Employee> employeeFromJson(String str) =>
    List<Employee>.from(json.decode(str).map((x) => Employee.fromJson(x)));

String employeeToJson(List<Employee> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Employee {
  Employee({
    this.id,
    this.name,
    this.username,
    this.email,
    this.address,
    this.phone,
    this.website,
    this.company,
  });

  int id;
  String name;
  String username;
  String email;
  Address address;
  String phone;
  String website;
  Company company;

  factory Employee.fromJson(Map<String, dynamic> json) => Employee(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        username: json["username"] == null ? null : json["username"],
        email: json["email"] == null ? null : json["email"],
        address:
            json["address"] == null ? null : Address.fromJson(json["address"]),
        phone: json["phone"] == null ? null : json["phone"],
        website: json["website"] == null ? null : json["website"],
        company:
            json["company"] == null ? null : Company.fromJson(json["company"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "username": username == null ? null : username,
        "email": email == null ? null : email,
        "address": address == null ? null : address.toJson(),
        "phone": phone == null ? null : phone,
        "website": website == null ? null : website,
        "company": company == null ? null : company.toJson(),
      };
}

class Address {
  Address({
    this.street,
    this.suite,
    this.city,
    this.zipcode,
    this.geo,
  });

  String street;
  String suite;
  String city;
  String zipcode;
  Geo geo;

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        street: json["street"] == null ? null : json["street"],
        suite: json["suite"] == null ? null : json["suite"],
        city: json["city"] == null ? null : json["city"],
        zipcode: json["zipcode"] == null ? null : json["zipcode"],
        geo: json["geo"] == null ? null : Geo.fromJson(json["geo"]),
      );

  Map<String, dynamic> toJson() => {
        "street": street == null ? null : street,
        "suite": suite == null ? null : suite,
        "city": city == null ? null : city,
        "zipcode": zipcode == null ? null : zipcode,
        "geo": geo == null ? null : geo.toJson(),
      };
}

class Geo {
  Geo({
    this.lat,
    this.lng,
  });

  String lat;
  String lng;

  factory Geo.fromJson(Map<String, dynamic> json) => Geo(
        lat: json["lat"] == null ? null : json["lat"],
        lng: json["lng"] == null ? null : json["lng"],
      );

  Map<String, dynamic> toJson() => {
        "lat": lat == null ? null : lat,
        "lng": lng == null ? null : lng,
      };
}

class Company {
  Company({
    this.name,
    this.catchPhrase,
    this.bs,
  });

  String name;
  String catchPhrase;
  String bs;

  factory Company.fromJson(Map<String, dynamic> json) => Company(
        name: json["name"] == null ? null : json["name"],
        catchPhrase: json["catchPhrase"] == null ? null : json["catchPhrase"],
        bs: json["bs"] == null ? null : json["bs"],
      );

  Map<String, dynamic> toJson() => {
        "name": name == null ? null : name,
        "catchPhrase": catchPhrase == null ? null : catchPhrase,
        "bs": bs == null ? null : bs,
      };
}
