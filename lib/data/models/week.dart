import 'package:hackaton/data/models/day.dart';

class Week {
  DateTime? start;
  DateTime? end;
  List<Day>? listOfDays;

  Week({
    this.start,
    this.end,
    this.listOfDays,
  });
}
