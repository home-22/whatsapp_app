// ignore_for_file: file_names, non_constant_identifier_names, must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  Calls({Key? key}) : super(key: key);

  List<Text> UserText = [
    const Text('Stela'),
    const Text('Petar Mak'),
    const Text('Robert'),
    const Text('Andreaa'),
    const Text('Robertt Olyy'),
    const Text('Andreassa'),
    const Text('Paula'),
    const Text('Ana'),
    const Text('RRobert'),
    const Text('Andreaa'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Column(
          children: [
            for (int i = 1; i < 4; i++)
              Container(
                margin: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        'images/user$i.png',
                        height: 55,
                        width: 55,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(child: UserText[i]),
                          const SizedBox(height: 8),
                          Row(
                            children: const [
                              Icon(
                                Icons.call_made,
                                color: Colors.black45,
                                size: 19,
                              ),
                              SizedBox(width: 5),
                              Text(
                                '(2) Today, 12:39',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black45,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    const Padding(
                      padding: EdgeInsets.all(0),
                      child: Icon(
                        Icons.call_sharp,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            for (int i = 5; i < 9; i++)
              Container(
                margin: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        'images/user$i.png',
                        height: 55,
                        width: 55,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: UserText[i],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: const [
                              Icon(
                                Icons.call_made,
                                color: Colors.black45,
                                size: 19,
                              ),
                              SizedBox(width: 5),
                              Text(
                                '(2) Today, 12:39',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black45,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    const Padding(
                      padding: EdgeInsets.all(0),
                      child: Icon(
                        CupertinoIcons.videocam,
                        color: Colors.green,
                        size: 28,
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
