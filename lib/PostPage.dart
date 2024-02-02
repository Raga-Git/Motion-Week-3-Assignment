import 'package:flutter/material.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Utas baru",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(Icons.close),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: Colors.black12,
            height: 1.0,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                      radius: 20,
                      backgroundImage:
                          AssetImage("assets/images/crab.png")),
                  SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "tuan_crab",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("Mulai Utas"),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Icon(Icons.photo_library_outlined),
                          SizedBox(
                            width: 12,
                          ),
                          Icon(Icons.gif_box_outlined),
                          SizedBox(
                            width: 12,
                          ),
                          Icon(Icons.mic_none_outlined),
                          SizedBox(
                            width: 12,
                          ),
                          Icon(Icons.tag_outlined),
                          SizedBox(
                            width: 12,
                          ),
                          Icon(Icons.notes_outlined),
                        ],
                      )
                    ],
                  )
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  const Text("Pengikut Anda bisa membalas"),
                  const Spacer(),
                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(50)),
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: const Center(
                        child: Text(
                      "Posting",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
