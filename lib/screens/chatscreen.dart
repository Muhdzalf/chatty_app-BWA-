import 'package:chatty_app/Components/chat_header.dart';
import 'package:chatty_app/theme.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ChatHeader(),
            Expanded(
                child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              width: double.infinity,
              color: babyblue,
              // With Column
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Sender(message: 'Assalamualaikum', time: '07.00 AM'),
                  Receiver(message: 'WaalaikumSallam', time: '07.01 AM'),
                  Sender(message: 'Hi joe, Gimana Kabarnya?', time: '07.03 AM'),
                  Receiver(
                      message: 'Alhamdulillah Sehat selalu', time: '07.04 AM'),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(bottom: 30),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: white, borderRadius: BorderRadius.circular(25)),
                    child: Row(
                      children: [
                        Expanded(
                            child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Type Everything..',
                              border: InputBorder.none),
                        )),
                        Container(
                          height: 40,
                          padding: EdgeInsets.all(1),
                          decoration: BoxDecoration(
                              color: Colors.grey[200], shape: BoxShape.circle),
                          child: Center(
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.mic,
                                size: 20,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}

class Receiver extends StatelessWidget {
  final String message;
  final String time;
  const Receiver({
    Key key,
    this.message,
    this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          decoration: BoxDecoration(
              color: white.withOpacity(0.7),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                message,
                style: title.copyWith(fontSize: 16, color: black),
              ),
              Text(
                time,
                style: subtitle,
              )
            ],
          ),
        ),
      ],
    );
  }
}

class Sender extends StatelessWidget {
  final String message;
  final String time;
  const Sender({
    Key key,
    this.message,
    this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          decoration: BoxDecoration(
              color: white.withOpacity(0.7),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                message,
                style: title.copyWith(fontSize: 16, color: black),
              ),
              Text(
                time,
                style: subtitle,
              )
            ],
          ),
        ),
      ],
    );
  }
}
