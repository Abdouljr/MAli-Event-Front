import 'package:flutter/material.dart';
import 'package:front_mali_event/Screen/postes/post_widget.dart';
import 'package:front_mali_event/Screen/postes/stories_widget.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
            height: size.height,
            width: size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/post.png"),
                  fit: BoxFit.fill),
            ),
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    height: MediaQuery.of(context).size.height * .08,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Posts",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        IconButton(
                          icon: const Icon(Icons.search_sharp),
                          iconSize: 30,
                          color: Colors.white,
                          onPressed: () {
                            // MaterialPageRoute(builder: (context))
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Storieswidget(),
                  const SizedBox(
                    height: 24,
                  ),
                  Postwidget()
                ],
              ),
            )));
  }
}
