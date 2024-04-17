import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  final String name;
  UserPosts({required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  //Profile photo
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                  ),

                  SizedBox(width: 10),

                  //  name
                  Text(
                    name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Icon(Icons.menu),
            ],
          ),
        ),

        // post
        Container(
          height: 400,
          color: Colors.grey[300],
        ),

        // below the post
        const Padding(
          padding: EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite_border_outlined),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Icon(Icons.comment_outlined),
                  ),
                  Icon(Icons.share),
                ],
              ),
              Icon(Icons.bookmark),
            ],
          ),
        ),

        // // liked by..
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: const Row(
            children: [
              Text("Liked by "),
              Text(
                "millie",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(' and '),
              Text(
                'others',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),

        // captions
        Padding(
            padding: const EdgeInsets.all(12.0),
            child: RichText(
                text:
                    TextSpan(style: TextStyle(color: Colors.black), children: [
              TextSpan(
                  text: name, style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(
                  text:
                      "  So beautiful So elegant Just looking like a wow... just looking like a wow")
            ]))),
      ],
    );
  }
}
