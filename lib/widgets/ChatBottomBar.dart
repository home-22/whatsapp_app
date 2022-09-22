// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ChatBottomBar extends StatelessWidget {
  const ChatBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.all(5),
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.emoji_emotions_outlined,
                  color: Colors.black45,
                  size: 30,
                ),
                const SizedBox(width: 10),
                SizedBox(
                  width: 100,
                  child: TextFormField(
                    style: const TextStyle(
                      fontSize: 19,
                    ),
                    decoration: const InputDecoration(
                      hintText: 'Message',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const Icon(
                  Icons.attachment_outlined,
                  color: Colors.black45,
                ),
                const SizedBox(width: 15),
                const Icon(
                  Icons.camera_alt,
                  size: 30,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xFF0FCE55),
              borderRadius: BorderRadius.circular(30),
            ),
            child: const Icon(
              Icons.mic,
              size: 30,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
