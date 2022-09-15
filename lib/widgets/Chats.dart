import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Column(
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: [
                  ClipPath(
                    child: Image.asset(
                      'images/user_2.png',
                      height: 55,
                      width: 55,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Programer 1',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Hi Programer, how are you?',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      Text(
                        '12:15',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.cyan,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 6),
                      Container(
                        width: 27,
                        height: 27,
                        decoration: BoxDecoration(color: Colors.amber),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
