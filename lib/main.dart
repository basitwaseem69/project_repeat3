import 'package:flutter/material.dart';
import 'package:project_3/add_check_list.dart';
import 'package:project_3/practise.dart';
import 'package:project_3/profiles.dart';
import 'package:project_3/project.dart';
// import 'package:project_3/urgent.dart';

import 'jobsScreen.dart';
void main() {
  runApp(My());
}
class My extends StatelessWidget {
  const My({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // home:Project() ,
        // home: Profiles(),
        // home: AddCheckList(),
        // home: Practise(),
        home: JobsScreen(),
  

    );
  }
}