// vimport 'package:enovatemarket/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Job extends StatefulWidget {
  const Job({super.key});
  //TabController _tabController;

  @override
  State<Job> createState() => _JobState();
}

class _JobState extends State<Job> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: RichText(
            text: TextSpan(
                text: "Hi",
                style: TextStyle(
                    color: Colors.amber,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
                children: [
                  TextSpan(
                    text: " Laiba!",
                    style: TextStyle(
                        color: Color.fromARGB(255, 3, 66, 117),
                        fontWeight: FontWeight.bold),
                  )
                ]),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbRnYVZHd2X4lHpteNCuxYznwZTz4alQ9gJV2R13g&s"),
              ),
            ),
          ],
        ),
        body: Container(
          child: Column(
            children: [
            Container(
              height: 60,
              color: Color.fromARGB(255, 3, 66, 117),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Your Jobs:",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    Text("5",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30)),
                  ],
                ),
              ),
            ),
            DefaultTabController(
              length: 3,
              child: TabBar(
                labelStyle: TextStyle(fontSize: 18),
                unselectedLabelColor: Colors.grey,
                labelColor: Colors.black,
                //controller: _tabController,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: Colors.amber,
                indicatorWeight: 4,
                tabs: [
                  Tab(
                    text: "All",
                  ),
                  Tab(
                    text: "Future Jobs",
                  ),
                  Tab(
                    text: "Previous Jobs",
                  )
                ],
              ),
            ),
            Container(
              height: 1,
              color: Colors.black,
            ),
            BuildContext1("june 06, 2023", "Samnabad Lahore",
                "knsd jhfjb djf dfbau dfbu", "Urgent"),
            Container(
              height: 1,
              color: Colors.black,
            ),
            BuildContext1("march 06, 2023", "Samnabad Lahore",
                "knsd jhfjb djf dfbau dfbu", "Urgent"),
            Container(
              height: 1,
              color: Colors.black,
            ),
          ]),
        ));
  }
}

Widget BuildContext1(
    String datetime, String area_city, String des, String pri) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 10.0),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            Text(
              "Lock Repairing: ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(
              height: 5,
            ),
            Text("36 mins remaining "),
            Spacer(),
            Container(
              // padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 8),
              //margin: EdgeInsets.only(top:),
              height: 30,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18), color: Colors.green),
              child: Center(
                child: Text(
                  "In Progress",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
        Text(
          datetime,
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Text(
              "Location: ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(area_city),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Text(
              "Description: ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(des),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Text(
              "Priority: ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              pri,
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.red, fontSize: 18),
            ),
          ],
        ),
      ]),
    ),
  );
}