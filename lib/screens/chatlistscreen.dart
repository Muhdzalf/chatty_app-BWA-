import 'package:chatty_app/Components/chat_tile.dart';
import 'package:chatty_app/Components/photoprofile.dart';
import 'package:chatty_app/theme.dart';
import 'package:flutter/material.dart';

class ChatListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: white,
          size: 30,
        ),
        backgroundColor: babyblue,
      ),
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
                style: subtitle.copyWith(color: white),
              ),
              SizedBox(
                height: 22.1,
              ),
              Container(
                padding: EdgeInsets.all(30),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(40),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Friends',
                      style: title.copyWith(color: black),
                    ),
                    ChatTile(
                        imageUrl: 'assets/images/profilephotos/cat.jpg',
                        name: 'Ananta Darawis',
                        message: 'Ngopi Kuy!',
                        time: '08.00 PM'),
                    ChatTile(
                        imageUrl: 'assets/images/profilephotos/cat2.jpg',
                        name: 'Gungun Gunawan',
                        message: 'Oyy, gimana jadi gak?',
                        time: '07.30 PM'),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Groups',
                      style: title.copyWith(color: black),
                    ),
                    ChatTile(
                      imageUrl: 'assets/images/groupphotos/dart.jpg',
                      name: 'Belajar Dart',
                      message: 'Dadang: mengirim foto',
                      time: '06.16 PM',
                    ),
                    ChatTile(
                        imageUrl: 'assets/images/groupphotos/flutter.png',
                        name: 'Belajar Flutter',
                        message: 'hana: Assalamualaikum, izin bertanya',
                        time: '06.35 PM'),
                    ChatTile(
                        imageUrl: 'assets/images/groupphotos/indo.png',
                        name: 'Indonesia Developer',
                        message: 'Ara: Hallo semua, gimana kabarnya?',
                        time: '03.43 PM'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
