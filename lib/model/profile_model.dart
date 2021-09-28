import 'dart:convert';
import 'package:http/http.dart' as http;

Profile profileFromJson(String str) => Profile.fromJson(json.decode(str));

String profileToJson(Profile data) => json.encode(data.toJson());

Future<List<Profile>> fetchPosts() async {
  var url = 'https://aya-api.mhealthkenya.co.ke/api/auth/user';
  http.Response response = await http.get(Uri.parse(url));
  var responseJson = json.decode(response.body);
  return (responseJson['metcheckData']['forecastLocation']['forecast'] as List)
      .map((p) => Profile.fromJson(p))
      .toList();
}

class Profile {
  Profile({
    this.id,
    this.indexNo,
    this.name,
    this.idNumber,
    this.passportNumber,
    this.birthCertNo,
    this.registration,
  });

  String? id;
  String? indexNo;
  String? name;
  String? idNumber;
  String? passportNumber;
  String? birthCertNo;
  List<Registration>? registration;

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        id: json["id"],
        indexNo: json["IndexNo"],
        name: json["Name"] ?? "",
        idNumber: json["IdNumber"] ?? "",
        passportNumber: json["PassportNumber"],
        birthCertNo: json["BirthCertNo"],
        registration: List<Registration>.from(
            json["registration"].map((x) => Registration.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "IndexNo": indexNo,
        "Name": name,
        "IdNumber": idNumber,
        "PassportNumber": passportNumber,
        "BirthCertNo": birthCertNo,
        //  "registration": List<dynamic>.from(registration.map((x) => x.toJson())),
      };
}

class Registration {
  Registration({
    this.regNo,
    this.cadre,
    this.cadreText,
  });

  String? regNo;
  String? cadre;
  String? cadreText;

  factory Registration.fromJson(Map<String, dynamic> json) => Registration(
        regNo: json["reg_no"],
        cadre: json["cadre"],
        cadreText: json["cadre_text"],
      );

  Map<String, dynamic> toJson() => {
        "reg_no": regNo,
        "cadre": cadre,
        "cadre_text": cadreText,
      };
}

class RegistrationList {
  List<Profile> profiles;
  RegistrationList(this.profiles);
  factory RegistrationList.fromJson(List<dynamic> json) {
    List<Profile> doctorlist = json.map((i) => Profile.fromJson(i)).toList();
    return RegistrationList(doctorlist);
  }
}
