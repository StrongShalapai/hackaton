import 'package:hackaton/data/models/teacher.dart';

class Department {
  int? departmentId;
  String? departmentName;
  int? facultyId;
  List<int>? listOfTeacherId;

  Department({
    this.facultyId,
    this.departmentId,
    this.departmentName,
    this.listOfTeacherId,
  });
}
