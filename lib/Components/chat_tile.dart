import 'package:chatty_app/Components/photoprofile.dart';
import 'package:flutter/material.dart';

import '../theme.dart';

class ChatTile extends StatelessWidget {
  final String name;
  final String message;
  final String imageUrl;
  final String time;
  const ChatTile({
    Key key,
    this.name,
    this.message,
    this.imageUrl,
    this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: PhotoProfile(
        size: small,
        imageUrl: imageUrl,
      ),
      title: Text(
        name,
        style: chatitle,
      ),
      subtitle: Text(
        message,
        style: chatext,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Text(
        time,
        style: chatext.copyWith(fontWeight: FontWeight.w400),
      ),
    );
  }
}
