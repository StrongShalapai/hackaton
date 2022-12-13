import 'package:hackaton/data/models/subject.dart';

class Day {
  int? dayId;
  DateTime? date;
  List<Subject>? listOfSubjects;

  Day({
    this.date,
    this.listOfSubjects,
  });
}
