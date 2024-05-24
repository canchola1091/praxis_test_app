
import 'dart:convert';

EmpleadosModel empleadosModelFromJson(String str) => EmpleadosModel.fromJson(json.decode(str));

class EmpleadosModel {
  
  final bool success;
  final Data data;

  EmpleadosModel({
    required this.success,
    required this.data,
  });

  factory EmpleadosModel.fromJson(Map<String, dynamic> json) => EmpleadosModel(
    success : json["success"],
    data    : Data.fromJson(json["data"]),
  );

}

class Data {
  
  final List<Employee> employees;

  Data({
    required this.employees,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    employees: List<Employee>.from(json["employees"].map((x) => Employee.fromJson(x))),
  );

}

class Employee {

  final int id;
  final String name;
  final String lastName;
  final int? birthday;

   Employee({
     required this.id,
     required this.name,
     required this.lastName,
     required this.birthday,
  });

  factory Employee.fromJson(Map<String, dynamic> json) => Employee(
    id       : json["id"],
    name     : json["name"],
    lastName : json["last_name"],
    birthday : json["birthday"],
  );

}
