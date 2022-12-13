import 'package:hackaton/data/models/department.dart';

class Faculty {
  int? facultyId;
  String? facultyName;
  List<Department>? listOfDepartments;

  Faculty({
    this.facultyId,
    this.facultyName,
    this.listOfDepartments,
  });
}
