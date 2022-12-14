// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_init_to_null

import 'package:flutter/material.dart';
import 'package:hackaton/interface/widgets/check_box.dart';
import 'package:hackaton/interface/widgets/text_field.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // String? facultyValue = 'Не выбрано';
  //
  String? facultyValue = null;
  List<String> faculties = [
    'Не выбрано',
    'Международный факультет',
    'Факультет культуры и искусства',
    'Факультет математики, информационных и авиационных технологий',
  ];
  //
  bool showDepart = false;
  String? departValue = null;
  List<String> departments = [
    'Не выбрано',
    'Кафедра прикладной математики',
    'Кафедра математического моделирования технических систем',
    'Кафедра информационной безопасности и теории управления',
  ];
  //
  bool showTeacher = false;
  String? teacherValue = null;
  List<String> teachers = [
    'Не выбрано',
    'Блюменштейн Алексей Александрович',
    'Гисметулин Альберт Растемович',
    'Железнов Олег Владимирович',
    'Ярдаева Маргарита Николаевна'
  ];
  //
  bool showButton = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Поиск по умолчанию'),
        backgroundColor: Colors.blueGrey,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.blueGrey,
                ),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  isExpanded: true,
                  hint: Text('Выберите факультет'),
                  value: facultyValue,
                  items: faculties
                      .map(
                        (value) => DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        ),
                      )
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      facultyValue = value!;
                      if (value == 'Не выбрано') {
                        showDepart = false;
                      }
                      if (value ==
                          'Факультет математики, информационных и авиационных технологий') {
                        showDepart = true;
                      } else {
                        showDepart = false;
                        showTeacher = false;
                        showButton = false;
                        departValue = null;
                        teacherValue = null;
                      }
                    });
                  },
                ),
              ),
            ),
          ),
          if (showDepart)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.blueGrey,
                  ),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    isExpanded: true,
                    hint: Text('Выберите кафедру'),
                    value: departValue,
                    items: departments
                        .map(
                          (value) => DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          ),
                        )
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        departValue = value!;
                        if (value == 'Не выбрано') {
                          showTeacher = false;
                        }
                        if (value ==
                            'Кафедра математического моделирования технических систем') {
                          showTeacher = true;
                        } else {
                          showTeacher = false;
                          showButton = false;
                          teacherValue = null;
                        }
                      });
                    },
                  ),
                ),
              ),
            ),
          if (showTeacher)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.blueGrey,
                  ),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    isExpanded: true,
                    hint: Text('Выберите преподавателя'),
                    value: teacherValue,
                    items: teachers
                        .map(
                          (value) => DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          ),
                        )
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        teacherValue = value!;
                        if (value != 'Не выбрано') {
                          showButton = true;
                        }
                      });
                    },
                  ),
                ),
              ),
            ),
          if (showButton) MyRow(),
          if (showButton)
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {},
                child: Text('Узнать расписание'),
              ),
            ),
        ],
      ),
    );
  }
}

class MyRow extends StatelessWidget {
  const MyRow({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 8, 8, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('Запомнить выбор'),
          MyCheckBox(),
        ],
      ),
    );
  }
}
