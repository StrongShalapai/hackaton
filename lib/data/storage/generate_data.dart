import 'package:hackaton/data/models/department.dart';
import 'package:hackaton/data/models/faculty.dart';
import 'package:hackaton/data/models/teacher.dart';

import '../models/schedule.dart';

abstract class Generator {
  static Faculty generateFaculty(
    int? facultyId,
    String facultyName,
  ) {
    return Faculty(
      facultyId: facultyId,
      facultyName: facultyName,
      listOfDepartments: _generateDepartmentList(),
    );
  }

  static List<Department> _generateDepartmentList() {
    List<Department> listOfDepartments = [];
    return listOfDepartments;
  }

  static Department _generateDepartment(
    int? departmentId,
    String? departmentName,
    int? facultyId,
  ) {
    return Department(
      departmentId: departmentId,
      departmentName: departmentName,
      facultyId: facultyId,
      listOfTeacherId: _generateTeacherList(),
    );
  }

  static List<int> _generateTeacherList() {
    List<int> listOfTeachers = [];
    return listOfTeachers;
  }

  static Teacher _generateTeacher(
    int? teacherId,
    List<int>? listOfDepartmentId,
    String? lastName,
    String? firstName,
    String? middleName,
    String? jobTitle,
    String? scienceDegree,
    Schedule? schedule,
  ) {
    return Teacher(
      teacherId: teacherId,
      listOfDepartmentId: listOfDepartmentId,
      lastName: lastName,
      firstName: firstName,
      middleName: middleName,
      jobTitle: jobTitle,
      scienceDegree: scienceDegree,
      schedule: schedule,
    );
  }
}
