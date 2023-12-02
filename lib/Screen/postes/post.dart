import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/post.png"),
                  fit: BoxFit.fill),
            ),
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: SingleChildScrollView()));
  }
}
