import 'package:flutter/material.dart';

class AddCheckList extends StatefulWidget {
  @override
  State<AddCheckList> createState() => _AddCheckListState();
}

class _AddCheckListState extends State<AddCheckList> {
  List checkBoxText = ["Arham", "Basit", "Ali", "Waseem", "Alo"];

  List colorBox = [
    Colors.red,
    Colors.blue,
    Colors.cyan,
    Colors.green,
    Colors.pink,
    Colors.amber
  ];

  int selected = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Stack(
        clipBehavior: Clip.none,
        // alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: size.height,
          ),
          Container(
            // width: size.width,
            height: 100,

            child: AppBar(
              backgroundColor: Color(0xff51A47A),
              foregroundColor: Colors.white,
              centerTitle: true,
              leading: Icon(
                Icons.arrow_back,
                size: 25,
                color: Colors.white,
              ),
              title: Text(
                "Add Check List",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Colors.white),
              ),
            ),
          ),
          Positioned(
            top: 70,
            left: 20,
            right: 20,
            // main coiumm
            child: Container(
              padding: EdgeInsets.all(20),
              // width: size.width * .80,
              // height: size.height * .,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Title",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "new check list",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                        color: Colors.black54),
                  ),
                  SizedBox(
                    height: 30,
                  ),

                  // row ko wrap kiya column maiii.....
                  Column(
                    children: [
                      for (int i = 0; i < checkBoxText.length; i++)
                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 15,
                          ),
                          child: Row(
                            children: [
                              Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    border: Border.all(
                                      width: 2,
                                      color: Colors.grey.shade500,
                                    ),
                                  )),
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                "${checkBoxText[i]}",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 17,
                                    color: Colors.black54),
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //
                  Row(
                    children: [
                      Text(
                        "+ Add New Item",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                            color: Colors.black),
                      ),
                      Spacer(),
                      Text(
                        "Remove Item",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                            color: Colors.black),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Choose Color",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (int i = 0; i < colorBox.length; i++)
                        InkWell(
                          onTap: () {
                            setState(() {
                              selected = i;
                              print("Click");
                            });
                          },
                          child: Container(
                              height: 45,
                              width: 45,
                              child: selected == i
                                  ? Icon(
                                      Icons.done,
                                      color: Colors.white,
                                      size: 25,
                                    )
                                  : Container(),
                              decoration: BoxDecoration(
                                color: colorBox[i],
                                borderRadius: BorderRadius.circular(5),
                                // border: Border.all(
                                //   width: 2,
                                //   color: Colors.grey.shade500,
                                // ),
                              )),
                        ),
                    ],
                  ),
                  // yai be method hai loop kai illawa.....
                  // Container(
                  //   height: 50,
                  //   child: ListView.builder(
                  //     scrollDirection: Axis.horizontal,
                  //     itemCount: 50,
                  //     shrinkWrap: true,
                  //     itemBuilder:(context, index) {
                  //     return   Center(
                  //       child: Container(
                  //           margin: EdgeInsets.all(10),
                  //               height: 45,
                  //               width: 45,
                  //               child: Icon(Icons.done,color: Colors.white,size: 25,),
                  //               decoration: BoxDecoration(
                  //                 color: Color(0xff6074FA),
                  //                 borderRadius: BorderRadius.circular(5),
                  //                 // border: Border.all(
                  //                 //   width: 2,
                  //                 //   color: Colors.grey.shade500,
                  //                 // ),
                  //               )),
                  //     );
                  //   }),
                  // ) ,
                  SizedBox(
                    height: 30,
                  ),
                  MaterialButton(
                      height: 50,
                      minWidth: size.width,
                      color: Color(0xff51A47A),
                      onPressed: () {
                        print("Done");
                      },
                      child: Text(
                        "Done",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white),
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
