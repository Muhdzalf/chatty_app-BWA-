import 'package:chatty_app/Components/photoprofile.dart';
import 'package:flutter/material.dart';

import '../theme.dart';

class ChatHeader extends StatelessWidget {
  const ChatHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        color: white,
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.13,
        child: Center(
          child: ListTile(
            leading: PhotoProfile(
              imageUrl: 'assets/images/profilephotos/cat.jpg',
              size: small,
            ),
            title: Text(
              'Ananta Darawis',
              style: title.copyWith(color: black),
            ),
            subtitle: Text(
              'Online',
              style: subtitle,
            ),
            trailing: Container(
              width: small - 10,
              height: small - 10,
              decoration:
                  BoxDecoration(color: Colors.green, shape: BoxShape.circle),
              child: IconButton(
                icon: Icon(Icons.call, color: white),
                onPressed: () {},
              ),
            ),
          ),
        ));
  }
}
