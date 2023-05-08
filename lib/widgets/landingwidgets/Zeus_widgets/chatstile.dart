import 'package:flutter/material.dart';

class chats extends StatefulWidget {
  const chats({Key? key}) : super(key: key);

  @override
  State<chats> createState() => _chatsState();
}

class _chatsState extends State<chats> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            margin: EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black,
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 40, 850, 0),
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFFEEFE3),
                  hintText: 'Search',
                  suffixIcon: Icon(
                    Icons.wechat_sharp,
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
          flex: 3,
          child: Container(
            /*margin: EdgeInsets.only(bottom: 30),*/
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black,
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            margin: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black,
            ),
          ),
        )
      ],
    );
  }
}
