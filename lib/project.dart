import 'package:flutter/material.dart';

class Project extends StatelessWidget {
  const Project({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: Container(
      //   color: Color(0xff51A47A),
      //   height: 70,
      //   child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     children: [
      //       CircleAvatar(
      // radius: 17,
      // backgroundColor: Colors.grey[400],
      //           child: Icon(
      //             Icons.done,
      //             size: 22,
      //             color:Colors.black54,
      //           )),
      //    Icon(
      //             Icons.grid_view,
      //             size: 35,
      //             color:Colors.grey[400],
      //           ),
      //           CircleAvatar(
      //             radius: 25,
      //             backgroundColor: Colors.red,
      //             child: Icon(
      //               Icons.add,
      //               size: 35,
      //               color:Colors.grey[400],
      //             ),
      //           ),
      //           Icon(
      //             Icons.text_snippet,
      //             size: 35,
      //             color:Colors.grey[400],
      //           ),
      //           Icon(
      //             Icons.person,
      //             size: 35,
      //             color:Colors.grey[400],
      //           )
      //     ],
      //   ),
      // ),

      appBar: AppBar(
        backgroundColor: Color(0xff51A47A),
        centerTitle: true,
        title: Text(
          "Projects",
          style: TextStyle(
              fontWeight: FontWeight.w500, fontSize: 20, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            // main column...........
            children: [
              // Card(
              //   child: Container(
              //     padding: EdgeInsets.all(15),
              //     height: 150,
              //     width: 150,
              //     color: Colors.greenAccent,
              //     child: Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         //row
              //         Row(
              //           children: [
              //             Container(
              //               height: 25,
              //               width: 25,
              //               decoration: BoxDecoration(
              //                   color: Colors.blue[300],
              //                   borderRadius: BorderRadius.circular(20)),
              //               child: Center(
              //                 child: CircleAvatar(
              //                   radius: 8,
              //                   backgroundColor: Colors.blue[800],
              //                 ),
              //               ),
              //             ),
              //             Spacer(),
              //             Icon(
              //               Icons.delete,
              //               color: Colors.red,
              //               size: 22,
              //             )
              //           ],
              //         ),
              //         SizedBox(
              //           height: 30,
              //         ),
              //         Text(
              //           "Android",
              //           style: TextStyle(
              //               fontWeight: FontWeight.bold,
              //               fontSize: 14,
              //               color: Colors.black),
              //         ),
              //         SizedBox(
              //           height: 8,
              //         ),
              //         Text("0 Task",
              //             style: TextStyle(
              //                 fontWeight: FontWeight.w600,
              //                 fontSize: 12,
              //                 color: Colors.black54)),
              //       ],
              //     ),
              //   ),
              // ),

              GridView.builder(
                itemCount: 8,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.10,
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemBuilder: ((context, index) {
                  return Card(
                    child: Container(
                      padding: EdgeInsets.all(15),
                      // height: 100,
                      // width: 150,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //row
                          Row(
                            children: [
                              Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                    color: Colors.blue[300],
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: CircleAvatar(
                                    radius: 8,
                                    backgroundColor: Colors.blue[800],
                                  ),
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.delete,
                                color: Colors.red,
                                size: 22,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Android",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text("0 Task",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Colors.black54)),
                        ],
                      ),
                    ),
                  );
                }),
              ),
              // bottom
              BottomNavigationBar(
                // selectedItemColor: Colors.red,
                // unselectedItemColor: Colors.black,
  type: BottomNavigationBarType.fixed,
      showUnselectedLabels: true,
                  // backgroundColor: Color(0xff51A47A),
                  items: [
                    
                    BottomNavigationBarItem(
                    
                        backgroundColor: Color(0xff51A47A),
                        icon: Icon(
                          Icons.done,
                          size: 22,
                          color: Colors.grey[400],
                        ),
                        label: "My Task"),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.grid_view,
                        size: 22,
                        color: Colors.grey[400],
                      ),
                      label: "Menu",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.add,
                        size: 22,
                        color: Colors.grey[400],
                      ),
                      label: "",
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(
                          Icons.text_snippet,
                          size: 22,
                          color: Colors.grey[400],
                        ),
                        label: "Quick"),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.person,
                        size: 22,
                        color: Colors.grey[400],
                      ),
                      label: "Profiles",
                    ),
                  ]),
            ],
          ),
        ),
      ),
    );
  }
}
  //  BottomAppBar(
  //           child: Row(
  //             children: [
  //               Container(
  //                 height: 30,
  //                 width: 30,
  //                 color: Colors.redAccent,
  //               )
  //             ],
  //           ),
  //         ),