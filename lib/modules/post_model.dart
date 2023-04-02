import 'user_model.dart';

enum PostType { image, video, audio }

class Post {
  final String id;
  final User user;
  final PostType type;
  final String caption;
  final String assetPath;

  Post(
      {required this.id,
      required this.user,
      required this.type,
      required this.caption,
      required this.assetPath});

  static List<Post> posts = [
    Post(
        id: '1',
        user: User.users[0],
        type: PostType.video,
        caption: ' like you',
        assetPath: 'assets/videos/video1.mp4'),
    Post(
        id: '2',
        user: User.users[1],
        type: PostType.video,
        caption: ' like you',
        assetPath: 'assets/videos/video2.mp4'),
    Post(
        id: '3',
        user: User.users[2],
        type: PostType.video,
        caption: ' like you',
        assetPath: 'assets/videos/video3.mp4'),
  ];
}
