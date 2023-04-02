import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:socialmedia/modules/post_model.dart';
import 'package:socialmedia/screens/profile_screen.dart';
import 'package:socialmedia/modules/user_model.dart';

import '../widgets/custom_video_player.dart';

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Post> posts = Post.posts;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: const _Customappbar(),
      body: SingleChildScrollView(
        child: ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          children: posts.map((post) {
            return CustomVideoPlayer(post: post);
          }).toList(),
        ),
      ),
      bottomNavigationBar: custombottom(),
      extendBodyBehindAppBar: true,
    );
  }
}

class custombottom extends StatelessWidget {
  const custombottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.black,
      child: SizedBox(
        height: 75,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, '/home');
              },
              color: Colors.white,
              iconSize: 30,
              icon: const Icon(Icons.home),
            ),
            IconButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, '/search');
              },
              color: Colors.white,
              iconSize: 30,
              icon: const Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              color: Colors.white,
              iconSize: 30,
              icon: const Icon(Icons.add_circle),
            ),
            IconButton(
              onPressed: () {},
              color: Colors.white,
              iconSize: 30,
              icon: const Icon(Icons.message),
            ),
            IconButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, '/profile');
              },
              color: Colors.white,
              iconSize: 30,
              icon: const Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}

class _Customappbar extends StatelessWidget with PreferredSizeWidget {
  const _Customappbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildButton(context, 'For you'),
          _buildButton(context, 'Following')
        ],
      ),
    );
  }

  TextButton _buildButton(
    BuildContext context,
    String text,
  ) {
    return TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(fixedSize: const Size(100, 50)),
        child: Text(
          text,
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
        ));
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
