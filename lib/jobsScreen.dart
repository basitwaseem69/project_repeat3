import 'package:flutter/material.dart';

class JobsScreen extends StatefulWidget {
  const JobsScreen({super.key});

  @override
  State<JobsScreen> createState() => _JobsScreenState();
}

class _JobsScreenState extends State<JobsScreen> {
  List urgentText = [
    "Urgent",
    "Urgent",
    "Normal",
    "Normal",
    "urgent",
  ];
  List containerText = [
    "Schedule",
    "In Progress",
    "Pending",
    "Completed",
    "Cancelled",
  ];
  List containerColor = [
     Color(0xff1A205D),
      Color(0xff00A1AB),
      Color(0xffFFA800),
      Color(0xff258F00),
      Color(0xffFF0505)
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: RichText(
          text: TextSpan(
              text: "Hi",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 35,
                  color: Colors.amber),
              children: [
                TextSpan(
                  text: " Arham",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color: Color(0xff1A205D)),
                )
              ]),
        ),
        actions: [
          CircleAvatar(
            radius: 40,
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(children: [
            Container(
              height: 60,
              color: Color(0xff1A205D),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Your Jobs:",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                          color: Colors.white),
                    ),
                    Text(
                      "5",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            DefaultTabController(
              initialIndex: 1,
              length: 3,
              child: TabBar(
                labelColor: Colors.black,
                labelStyle:
                    TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                indicatorColor: Colors.amber,
                unselectedLabelColor: Colors.black54,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
                  Tab(
                    text: "All",
                  ),
                  Tab(
                    text: "Remaining",
                  ),
                  Tab(
                    text: "Job done",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 3,
              color: Colors.black54,
            ),
            // SizedBox(height: 10,),

            for (int i = 0; i <containerText.length; i++)
              Container(
                padding: EdgeInsets.all(15),
                color: Colors.white12,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Lock Repairing",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Color(0xff1A205D)),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.timer,
                          size: 18,
                          color: Colors.black54,
                        ),
                        Text(
                          "36 mins remaining",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              color: Colors.black54),
                        ),
                        Spacer(),
                        Container(
                          width: 140,
                          height: 36,
                          child: Center(
                            child: Text(
                              '${containerText[i]}',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: containerColor[i],
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'June 06,2023 - 10:00pm',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: Colors.black54),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          "Location:",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.black),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Samnabad Lahore",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              color: Colors.black54),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          "Description:",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.black),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Lorem Ipsum is simply dummy text of the printing ",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              color: Colors.black54),
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Text(
                      "and typesetting industry",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: Colors.black54),
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Text(
                          "Priority:",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.black),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "${urgentText[i]}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: containerColor[i] ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Divider(thickness: 3,color: Colors.black54,)
                  ],
                ),
              ),
          ]),
        ),
      ),
    );
  }
}
