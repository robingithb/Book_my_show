class User {
  final String id;
  final String username;
  final String imagePath;
  final int following;
  final int followers;
  final int likes;

  User({
    required this.id,
    required this.username,
    required this.imagePath,
    this.following = 0,
    this.followers = 0,
    this.likes = 0,
  });

  static List<User> users = [
    User(
        id: '1',
        username: 'Robin',
        imagePath: 'assets/images/user.png',
        followers: 100,
        following: 100,
        likes: 500),
    User(
        id: '2',
        username: 'Thomas',
        imagePath: 'assets/images/thomas.png',
        followers: 50,
        following: 100,
        likes: 50),
    User(
        id: '3',
        username: 'Sharon',
        imagePath: 'assets/images/sharon.png',
        followers: 100,
        following: 100,
        likes: 500),
  ];
}
