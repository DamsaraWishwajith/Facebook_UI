import 'package:fb_ui/models/post_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PostListView extends StatelessWidget {
  PostListView({super.key, required this.pp});

  final String pp;
  List<PostModel> posts = [
    PostModel(
      post:
          'https://d1rig8ldkblbsy.cloudfront.net/app/uploads/2018/01/10150148/iStock-5184662221.jpg',
      time: '6h',
      caption: 'Beautiful Views',
      userImage: 'https://d2kf8ptlxcina8.cloudfront.net/8ADWVBHPEK-preview.png',
      uid: '23',
      userName: 'Piyumi Hasanjali',
      type: 'update cover photo',
    ),
    PostModel(
      post:
          'https://d1rig8ldkblbsy.cloudfront.net/app/uploads/2018/01/10150148/iStock-5184662221.jpg',
      time: '6h',
      caption: 'Beautiful Views',
      userImage: 'https://d2kf8ptlxcina8.cloudfront.net/8ADWVBHPEK-preview.png',
      uid: '23',
      userName: 'Nadeesha Rasanjali',
      type: 'update cover photo',
    ),
    PostModel(
      post:
          'https://d1rig8ldkblbsy.cloudfront.net/app/uploads/2018/01/10150148/iStock-5184662221.jpg',
      time: '6h',
      caption: 'Beautiful Views',
      userImage: 'https://d2kf8ptlxcina8.cloudfront.net/8ADWVBHPEK-preview.png',
      uid: '23',
      userName: 'Piyumi Hasanjali',
      type: 'update cover photo',
    ),
    PostModel(
      post:
          'https://d1rig8ldkblbsy.cloudfront.net/app/uploads/2018/01/10150148/iStock-5184662221.jpg',
      time: '6h',
      caption: 'Beautiful Views',
      userImage: 'https://d2kf8ptlxcina8.cloudfront.net/8ADWVBHPEK-preview.png',
      uid: '23',
      userName: 'Piyumi Hasanjali',
      type: 'update cover photo',
    ),
    PostModel(
      post:
          'https://d1rig8ldkblbsy.cloudfront.net/app/uploads/2018/01/10150148/iStock-5184662221.jpg',
      time: '6h',
      caption: 'Beautiful Views',
      userImage: 'https://d2kf8ptlxcina8.cloudfront.net/8ADWVBHPEK-preview.png',
      uid: '23',
      userName: 'Piyumi Hasanjali',
      type: 'update cover photo',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: posts.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.blue, width: 2),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: CircleAvatar(backgroundImage: NetworkImage(pp)),
                      ),
                    ),
                    SizedBox(width: 5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          posts[index].userName,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          posts[index].type,
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                        Row(
                          children: [
                            Text(
                              posts[index].time,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 13,
                              ),
                            ),
                            SizedBox(width: 4),
                            Icon(
                              Icons.public,
                              color: Colors.grey.shade600,
                              size: 13,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Spacer(flex: 1),
                    Icon(Icons.more_horiz, color: Colors.grey),
                    SizedBox(width: 20),
                    Icon(Icons.clear_rounded, color: Colors.grey),
                  ],
                ),
              ),
              Text(
                posts[index].caption,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Image.network(posts[index].userImage, fit: BoxFit.fill),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('1.2k', style: TextStyle(color: Colors.grey)),
                    Text(
                      '876 Comments  436 Shares',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ActionButton(icon: Icons.thumb_up_alt_outlined, text: 'Like'),
                  ActionButton(icon: Icons.comment, text: 'Comment'),
                  ActionButton(icon: Icons.reply, text: 'Share'),
                ],
              ),
              Divider(thickness: 0.3, height: 50, color: Colors.grey.shade800),
            ],
          ),
        );
      },
    );
  }
}

class ActionButton extends StatelessWidget {
  const ActionButton({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Icon(icon, color: Colors.grey),
            SizedBox(width: 2),
            Text(text, style: TextStyle(color: Colors.grey)),
          ],
        ),
      ],
    );
  }
}
