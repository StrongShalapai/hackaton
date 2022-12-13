import 'package:hackaton/data/models/schedule.dart';

class Teacher {
  int? teacherId;
  List<int>? listOfDepartmentId;
  String? lastName;
  String? firstName;
  String? middleName;
  String? jobTitle;
  String? scienceDegree;
  Schedule? schedule;

  Teacher({
    this.teacherId,
    this.listOfDepartmentId,
    this.lastName,
    this.firstName,
    this.middleName,
    this.jobTitle,
    this.scienceDegree,
    this.schedule,
  });
}
