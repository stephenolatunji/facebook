import 'package:facebook/data/data.dart';
import 'package:facebook/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../config/palette.dart';
import '../widgets/widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const textStyle = const TextStyle(
        color: Palette.facebookBlue,
        fontSize: 28.0,
        fontWeight: FontWeight.bold,
        letterSpacing: -1.2);
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.white,
          brightness: Brightness.light,
          title: Text('Padi', style: textStyle),
          centerTitle: false,
          floating: true,
          actions: [
            CircleButton(
                // key: key,
                icon: Icons.search,
                iconSize: 25.0,
                onPressed: () => print('Search')),
            CircleButton(
                // key: key,
                icon: Icons.message,
                iconSize: 20.0,
                onPressed: () => print('Messages'))
          ],
        ),
        SliverToBoxAdapter(
          child: CreatePostContainer(currentUser: currentUser),
        ),
        SliverPadding(
            padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
            sliver: SliverToBoxAdapter(child: Rooms(onlineUsers: onlineUsers))),
        // SliverPadding(
        //     padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
        //     sliver: SliverToBoxAdapter(
        //         child: Stories(currentUser: currentUser, stories: stories)))
      ],
    ));
  }
}
