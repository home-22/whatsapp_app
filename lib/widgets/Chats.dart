// ignore_for_file: file_names, must_be_immutable, non_constant_identifier_names

import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  Chats({Key? key}) : super(key: key);

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
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Column(
        children: [
          for (int i = 1; i < 10; i++)
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'ChatPage');
              },
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        'images/user$i.png',
                        height: 50,
                        width: 50,
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
                          const Text(
                            'Hi Programer, how are you?',
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        const Text(
                          '12:15',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.cyan,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Container(
                          alignment: Alignment.center,
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            '2',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
