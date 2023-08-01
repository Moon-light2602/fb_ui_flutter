class Post{
  final String profileImageUrl;
  final String username;
  final String time;
  final String content;
  final String imagePost;
  final String likes;
  final String comments;
  final String shares;

  Post({
    required this.profileImageUrl,
    required this.username,
    required this.time,
    required this.content,
    required this.imagePost,
    required this.likes,
    required this.comments,
    required this.shares
  });
}

List<Post> posts = [
  Post(profileImageUrl: 'assets/Sam Wilson.jpg', username: 'Sam', time: '5h', content: 'Hey guys whats up, This is Sam. I am currently in singapore. Came here to make some amazing memories',imagePost: 'assets/story8.jpg', likes: '63', comments: '11', shares: '2'),
  Post(profileImageUrl: 'assets/jeremy.jpg', username: 'Jer', time: '1h',
      content: 'This is content of post. I hope you guys like it!!! :))))',
      imagePost: 'assets/story1.jpg', likes: '52', comments: '1', shares: '6'),
  Post(profileImageUrl: 'assets/mathew.jpg', username: 'Math', time: '2d', content: 'Hey guys this is Mathew, I hope you guys like it!', imagePost: 'assets/story2.jpg', likes: '61', comments: '3', shares: '2'),
  Post(profileImageUrl: 'assets/eddison.jpg', username: 'Eddi', time: '1w', content: 'Good afternoon people, hope you are doing well. Wish you good health guys :)', imagePost: 'assets.story3.jpg', likes: '233', comments: '6', shares: '4'),
  Post(profileImageUrl: 'assets/olivia.jpg', username: 'Oli', time: '3w', content: 'This is my first ever job. Wish me luck guys', imagePost: 'assets/story6.jpg', likes: '77', comments: '7', shares: '2'),
];