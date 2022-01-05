import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> profileImage = [
    "images/couple1.png",
    "images/family1.png",
    "images/man1.png",
    "images/man2.png",
    "images/man3.png",
    "images/man4.png",
    "images/woman1.png",
    "images/woman2.png",
    "images/woman3.png",
    "images/woman4.png",
    "images/woman5.png",
    "images/woman3.png",
  ];

  List<String> posts = [
    "images/post_1.png",
    "images/post_2.png",
    "images/post_3.png",
    "images/post_4.png",
    "images/post_5.png",
    "images/post_6.png",
    "images/post_7.png",
    "images/post_8.png",
    "images/post_9.png",
    "images/post_10.png",
    "images/post_11.png",
    "images/post_12.png",
  ];

  Future<void> onRefresh() async {
    await Future.delayed(Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "images/logo.png",
          height: 50,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_circle_outline),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_border),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.chat_bubble_outline),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    12,
                    (index) => Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage("images/story.png"),
                            child: CircleAvatar(
                              radius: 32,
                              backgroundImage: AssetImage(
                                profileImage[index],
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Profile Name",
                            style: TextStyle(fontSize: 12, color: Colors.black87),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Divider(),
              Column(
                children: List.generate(
                  12,
                  (index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            child: CircleAvatar(
                              radius: 14,
                              backgroundImage: AssetImage("images/story.png"),
                              child: CircleAvatar(
                                radius: 12,
                                backgroundImage: AssetImage(
                                  profileImage[index],
                                ),
                              ),
                            ),
                          ),
                          Text("Profile Name"),
                          Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.more_vert),
                          ),
                        ],
                      ),
                      Image.asset(posts[index]),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.favorite_border),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.chat_bubble_outline),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.label_outline),
                          ),
                          Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.bookmark_border),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                style: TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(text: "Liked by"),
                                  TextSpan(
                                    text: " Profile Name",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(text: " and"),
                                  TextSpan(
                                    text: " others",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                style: TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                    text: " Profile Name",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        " This is the most amazing picture ever put on Instagram. This is also the best course ever made !",
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "View all 12 comments",
                              style: TextStyle(
                                color: Colors.black38,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
