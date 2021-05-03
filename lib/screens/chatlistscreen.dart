import 'package:chatty_app/Components/photoprofile.dart';
import 'package:chatty_app/theme.dart';
import 'package:flutter/material.dart';

class ChatListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 2, color: white)),
                child: PhotoProfile(
                  imageUrl: 'assets/images/profilephotos/messi.jpg',
                  size: large,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Lionel Messi',
                style: title,
              ),
              Text(
                'Profesional Footballer',
                style: subtitle.copyWith(color: babyblue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
