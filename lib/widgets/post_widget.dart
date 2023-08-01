import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../models/post.dart';

class PostWidget extends StatelessWidget {

  final Post post;

  const PostWidget({super.key,
    required this.post
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage(post.profileImageUrl),
                radius: 20.0,
              ),
              const SizedBox(width: 7.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(post.username, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0)),
                  const SizedBox(height: 5.0),

                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(post.time,
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.w400,
                        ),
                        ),
                        Text(
                            ' . ',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey.shade700,
                        ),
                        ),
                        const Icon(Icons.public,
                          size: 20,
                          color: Colors.grey,
                        ),
                      ],
                  ),

                ],
              ),

              const SizedBox(width: 165,),
              IconButton(
                onPressed: (){},
                icon: Icon(
                  Icons.more_horiz_outlined,
                  color: Colors.grey.shade600,
                ),
              ),
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.clear_rounded,
                    color: Colors.grey.shade500),
              ),
            ],
          ),

          const SizedBox(height: 20.0),

          Text(post.content, style: const TextStyle(fontSize: 15.0)),

          const SizedBox(height: 10.0),

          Image.asset('assets/story8.jpg'),

          const SizedBox(height: 10.0),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  const Icon(FontAwesomeIcons.thumbsUp, size: 15.0, color: Colors.blue),
                  Text(' ${post.likes}'),
                ],
              ),
              Row(
                children: <Widget>[
                  Text('${post.comments} comments  •  '),
                  Text('${post.shares} shares'),
                ],
              ),
            ],
          ),

          const Divider(height: 30.0),

          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(FontAwesomeIcons.thumbsUp, size: 20.0),
                  SizedBox(width: 5.0),
                  Text('Like', style: TextStyle(fontSize: 14.0)),
                ],
              ),
              Row(
                children: <Widget>[
                  Icon(FontAwesomeIcons.commentAlt, size: 20.0),
                  SizedBox(width: 5.0),
                  Text('Comment', style: TextStyle(fontSize: 14.0)),
                ],
              ),
              Row(
                children: <Widget>[
                  Icon(FontAwesomeIcons.share, size: 20.0),
                  SizedBox(width: 5.0),
                  Text('Share', style: TextStyle(fontSize: 14.0)),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}