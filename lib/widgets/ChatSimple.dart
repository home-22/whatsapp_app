// ignore_for_file: file_names

import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';


class ChatSimple extends StatelessWidget {
  const ChatSimple({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 80),
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.receive),
            child: Container(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 10, left: 25, right: 10),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: const Text(
                'Hi Developer, How are you?',
                style: TextStyle(fontSize: 17),
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          margin: const EdgeInsets.only(top: 20, left: 80, bottom: 15),
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.send),
            child: Container(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 10, left: 10, right: 10),
              decoration: BoxDecoration(
                color: Colors.lightGreen[200],
              ),
              child: const Text(
                'Hi Programer 1,i am fine and well.thanks for asking and what about you.i hope you will be also fine',
                style: TextStyle(fontSize: 17),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
