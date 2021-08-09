import 'package:flutter/material.dart';
import '../models/models.dart';
import './widget.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  const CreatePostContainer({Key? key, required this.currentUser})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                ProfileAvatar(imageUrl: currentUser.imageUrl),
                const SizedBox(width: 10.0),
                Expanded(
                    child: TextField(
                  decoration:
                      InputDecoration.collapsed(hintText: "Wetin dey happun?"),
                ))
              ],
            ),
            const Divider(
              height: 10.0,
              thickness: 1.0, 
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton.icon(
                    onPressed: () => print('live'),
                    icon: const Icon(Icons.videocam, color: Colors.red),
                    label: Text('Live')),
                const VerticalDivider(width: 8.0),
                TextButton.icon(
                    onPressed: () => print('Photo'),
                    icon: const Icon(Icons.photo_library, color: Colors.green),
                    label: Text('photos')),
                const VerticalDivider(width: 8.0),
                TextButton.icon(
                    onPressed: () => print('Room'),
                    icon: const Icon(Icons.video_call,
                        color: Colors.purpleAccent),
                    label: Text('Room'))
              ],
            )
          ],
        ));
  }
}
