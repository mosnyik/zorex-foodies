import 'package:flutter/material.dart';
import 'package:foodapp/screens/home.dart';
import 'package:foodapp/screens/menu.dart';

import '../constants/constants.dart';
import '../constants/text_style.dart';

class LiveChat extends StatefulWidget {
  const LiveChat({Key? key}) : super(key: key);
  static String id = 'live_chat';
  @override
  State<LiveChat> createState() => _LiveChatState();
}

class _LiveChatState extends State<LiveChat> {
  String messageText = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        leading: null,
        actions: [
          IconButton(
              onPressed: () {
                //Navigator.pop(context);
                /* Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));*/
              },
              icon: const Icon(Icons.close))
        ],
        title: const Text('Chats'),
        backgroundColor: kMainColor,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      child: Padding(
                    padding: kRecommendedSidePadding,
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                          hintText: 'Type your message',
                          hintStyle: TextStyle(color: kDeepGrey)),
                      style: kBodyTextStyle,
                      onChanged: (value) {
                        messageText = value;
                      },
                    ),
                  )),
                  TextButton(
                      onPressed: () {},
                      child: const Icon(
                        Icons.send,
                        color: kMainColor,
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
