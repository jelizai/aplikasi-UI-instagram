import 'package:flutter/material.dart';
import 'package:instagram_app/post.dart';
import 'package:instagram_app/story.dart';

class Feed extends StatelessWidget {
  final List<Story> _stories = [
    Story(
        "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Jazmin"),
    Story(
        "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Sylvester"),
    Story(
        "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Lavina"),
    Story(
        "https://images.pexels.com/photos/1124724/pexels-photo-1124724.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Mckenzie"),
    Story(
        "https://images.pexels.com/photos/1845534/pexels-photo-1845534.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Buster"),
    Story(
        "https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Carlie"),
    Story(
        "https://images.pexels.com/photos/762020/pexels-photo-762020.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Edison"),
    Story(
        "https://images.pexels.com/photos/573299/pexels-photo-573299.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Flossie"),
    Story(
        "https://images.pexels.com/photos/756453/pexels-photo-756453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Lindsey"),
    Story(
        "https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Freddy"),
    Story(
        "https://images.pexels.com/photos/1832959/pexels-photo-1832959.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        "Litzy")
  ];

  List<Post> posts = [
    Post(
        username: "Jeli Sukaramah Zai - 411211059",
        userImage: "https://picsum.photos/id/1/200/300",
        postImage:
            "https://images.pexels.com/photos/302769/pexels-photo-302769.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        caption: "Consequatur nihil aliquid omnis consequatur."),
    Post(
        username: "Henri",
        userImage: "https://picsum.photos/id/1/200/300",
        postImage:
            "https://images.pexels.com/photos/884979/pexels-photo-884979.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        caption: "Consequatur nihil aliquid omnis consequatur."),
    Post(
        username: "Mariano",
        userImage: "https://picsum.photos/id/1/200/300",
        postImage:
            "https://images.pexels.com/photos/291762/pexels-photo-291762.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        caption: "Consequatur nihil aliquid omnis consequatur."),
    Post(
        username: "Johan",
        userImage: "https://picsum.photos/id/1/200/300",
        postImage:
            "https://images.pexels.com/photos/1536619/pexels-photo-1536619.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        caption: "Consequatur nihil aliquid omnis consequatur."),
    Post(
        username: "London",
        userImage: "https://picsum.photos/id/1/200/300",
        postImage:
            "https://images.pexels.com/photos/247298/pexels-photo-247298.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        caption: "Consequatur nihil aliquid omnis consequatur."),
    Post(
        username: "Jada",
        userImage: "https://picsum.photos/id/1/200/300",
        postImage:
            "https://images.pexels.com/photos/169191/pexels-photo-169191.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        caption: "Consequatur nihil aliquid omnis consequatur."),
    Post(
        username: "Crawford",
        userImage: "https://picsum.photos/id/1/200/300",
        postImage:
            "https://images.pexels.com/photos/1252983/pexels-photo-1252983.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        caption: "Consequatur nihil aliquid omnis consequatur."),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          const Divider(),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Stories",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                Text(
                  "Watch All",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(
              vertical: 10,
            ),
            height: 110,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: _stories.map((story) {
                return Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(70),
                        border: Border.all(
                          width: 3,
                          color: const Color(0xFF8e44ad),
                        ),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(
                          2,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(70),
                          child: Image(
                            image: NetworkImage(story.image),
                            width: 70,
                            height: 70,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(story.name),
                  ],
                );
              }).toList(),
            ),
          ),

          // posts
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: posts.length,
              itemBuilder: (ctx, i) {
                return Container(
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: Image(
                                    image:
                                        NetworkImage(posts[i].userImage ?? ""),
                                    width: 40,
                                    height: 40,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(posts[i].username ?? ""),
                              ],
                            ),
                            // IconButton(
                            //   icon: Icon(SimpleLineIcons.options),
                            //   onPressed: () {},
                            // ),
                          ],
                        ),
                      ),

                      FadeInImage(
                        image: NetworkImage(posts[i].postImage ?? ""),
                        placeholder: const AssetImage("assets/placeholder.png"),
                        width: MediaQuery.of(context).size.width,
                      ),

                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              // IconButton(
                              //   onPressed: () {},
                              //   icon: Icon(FontAwesome.heart_o),
                              // ),
                              // IconButton(
                              //   onPressed: () {},
                              //   icon: Icon(FontAwesome.comment_o),
                              // ),
                              // IconButton(
                              //   onPressed: () {},
                              //   icon: Icon(FontAwesome.send_o),
                              // ),
                            ],
                          ),
                          // IconButton(
                          //   onPressed: () {},
                          //   icon: Icon(FontAwesome.bookmark_o),
                          // ),
                        ],
                      ),

                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(
                          horizontal: 14,
                        ),
                        child: RichText(
                          softWrap: true,
                          overflow: TextOverflow.visible,
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: "Liked By ",
                                style: TextStyle(color: Colors.black),
                              ),
                              TextSpan(
                                text: "Sigmund,",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              TextSpan(
                                text: " Yessenia,",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              TextSpan(
                                text: " Dayana",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              TextSpan(
                                text: " and",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: " 1263 others",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),

                      // caption
                      // Container(
                      //   width: MediaQuery.of(context).size.width,
                      //   margin: const EdgeInsets.symmetric(
                      //     horizontal: 14,
                      //     vertical: 5,
                      //   ),
                      //   child: RichText(
                      //     softWrap: true,
                      //     overflow: TextOverflow.visible,
                      //     text: TextSpan(
                      //       children: [
                      //         TextSpan(
                      //           text: posts[i].username,
                      //           style: const TextStyle(
                      //               fontWeight: FontWeight.bold,
                      //               color: Colors.black),
                      //         ),
                      //         TextSpan(
                      //           text: " ${posts[i].caption}",
                      //           style: const TextStyle(color: Colors.black),
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // ),

                      // post date
                      Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 14,
                        ),
                        alignment: Alignment.topLeft,
                        child: const Text(
                          "Febuary 2020",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
