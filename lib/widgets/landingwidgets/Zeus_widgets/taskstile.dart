import 'package:flutter/material.dart';

class tasks extends StatefulWidget {
  const tasks({Key? key}) : super(key: key);

  @override
  State<tasks> createState() => _tasksState();
}

class _tasksState extends State<tasks> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black,
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 60, 850, 0),
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFFEEFE3),
                  hintText: 'Search',
                  suffixIcon: Icon(
                    Icons.task_sharp,
                    color: Colors.black,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: Container(
            margin: EdgeInsets.only(top: 10),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Last Task",
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: "GR",
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFEEFE3)),
                  ),
                  Row(
                    children: [
                      Text("94",
                          style: TextStyle(
                              fontSize: 30,
                              fontFamily: "GR",
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFFEEFE3))),
                      SizedBox(width: 60),
                      Divider(height: 50, color: Color(0xFFFEEFE3)),
                      Text("23",
                          style: TextStyle(
                              fontSize: 30,
                              fontFamily: "GR",
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFFEEFE3))),
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "117 total ,",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFFEEFE3)),
                      ),
                      Text(
                        " proceed to resolve them",
                        style: TextStyle(
                            fontWeight: FontWeight.w100,
                            color: Color(0xFFFEEFE3)),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text("Done", style: TextStyle(color: Color(0xFFFEEFE3))),
                      SizedBox(width: 60),
                      Text(
                        "In Progress",
                        style: TextStyle(color: Color(0xFFFEEFE3)),
                      )
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: Divider(color: Color(0xFFFEEFE3)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Name", style: TextStyle(color: Color(0xFFFEEFE3))),
                  Row(
                    children: [
                      Text(
                        "Admin",
                        style: TextStyle(color: Color(0xFFFEEFE3)),
                      ),
                      SizedBox(width: 80),
                      Text(
                        "Members",
                        style: TextStyle(color: Color(0xFFFEEFE3)),
                      ),
                      SizedBox(width: 40),
                      Text(
                        "Status",
                        style: TextStyle(color: Color(0xFFFEEFE3)),
                      ),
                      SizedBox(width: 100),
                      Text(
                        "Runtime",
                        style: TextStyle(color: Color(0xFFFEEFE3)),
                      ),
                      SizedBox(width: 40),
                      Text(
                        "Finish Date",
                        style: TextStyle(color: Color(0xFFFEEFE3)),
                      )
                    ],
                  )
                ],
              )
            ]),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black,
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 20, right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 20, left: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.pink,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
