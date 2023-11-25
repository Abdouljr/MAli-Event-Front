import 'package:flutter/material.dart';

class DetailsEvent extends StatefulWidget {
  const DetailsEvent({super.key});

  @override
  State<DetailsEvent> createState() => _DetailsEventState();
}

class _DetailsEventState extends State<DetailsEvent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.deepPurple,
            height: MediaQuery.of(context).size.height * .5,
            padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    color: Colors.white38,
                    child: const Icon(Icons.arrow_back_ios),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    color: Colors.white38,
                    child: const Icon(Icons.favorite),
                  ),
                ]),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.lightBlueAccent,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text(
                        'Concert',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
