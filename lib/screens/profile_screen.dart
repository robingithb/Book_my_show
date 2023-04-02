import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:socialmedia/modules/post_model.dart';
import 'package:socialmedia/modules/user_model.dart';
import 'package:socialmedia/modules/models.dart';

class profilescreen extends StatelessWidget {
  const profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    User? user = ModalRoute.of(context)!.settings.arguments as User?;
    user = user ??= User.users[0];

    List<Post> post = Post.posts.where((post) {
      return post.user.id == user!.id;
    }).toList();
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          '@${user.username}',
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _ProfileInformation(user: user),
          ],
        ),
      ),
    );
  }
}

class _ProfileInformation extends StatelessWidget {
  const _ProfileInformation({
    super.key,
    required this.user,
  });

  final User user;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundColor: Colors.white,
          backgroundImage: AssetImage(user.imagePath),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 75.0),
          child: Row(
            children: [
              _buildUserInfo(context, 'following', '${user.following}'),
              _buildUserInfo(context, 'followers', '${user.followers}'),
              _buildUserInfo(context, 'Likes', '${user.likes}')
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: const Color(0xffff006e),
                fixedSize: const Size(200, 50),
              ),
              child: Text(
                'Follow',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                fixedSize: const Size(50, 50),
              ),
              child: const Icon(
                Icons.arrow_drop_down,
                color: Colors.black,
              ),
            ),
          ],
        )
      ],
    );
  }

  Expanded _buildUserInfo(BuildContext context, String type, String value) {
    return Expanded(
      child: Column(
        children: [
          Text(
            value,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          Text(
            type,
            maxLines: 3,
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: Colors.grey.shade200, letterSpacing: 1.5),
          ),
        ],
      ),
    );
  }
}
