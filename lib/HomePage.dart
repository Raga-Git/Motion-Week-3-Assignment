import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Lottie.asset('assets/lottie/logo.json', width: 120),
        backgroundColor: const Color(0xFFFFFFFF),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              PostCard(
                image: 'assets/images/spongebob.png',
                username: 'spongebob',
                postText: 'Hari ini bikini bottom cerah',
                postImage: 'assets/images/bikiniBottom.png',
                waktu: '3 hari',
                comment: '55 balasan',
                like: '500 suka',
              ),
              PostCard(
                image: 'assets/images/sandy.png',
                username: 'sandy_ilmuan',
                postText: 'Eksperimen roket',
                postImage: 'assets/images/roket.png',
                waktu: '5 hari',
                comment: '101 balasan',
                like: '18k suka',
              ),
              PostCard(
                image: 'assets/images/squidward.png',
                username: 'squidward1140',
                postText: 'Membosankan seperti hari sebelumnya',
                postImage: 'assets/images/squidwardDay.png',
                waktu: '6 hari',
                comment: '3 balasan',
                like: '50 suka',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PostCard extends StatelessWidget {
  final String image;
  final String username;
  final String postText;
  final String postImage;
  final String waktu;
  final String like;
  final String comment;

  const PostCard({
    super.key,
    required this.image,
    required this.username,
    required this.postText,
    required this.postImage,
    required this.waktu,
    required this.like,
    required this.comment,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(image),
            ),
            const SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      username,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Text(postText),
              ],
            ),
            const Spacer(),
            Text(
              waktu,
            ),
            const SizedBox(
              width: 16,
            ),
            const Icon(Icons.more_horiz_outlined)
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(postImage)),
        const SizedBox(
          height: 16,
        ),
        const Row(
          children: [
            Icon(Icons.favorite_border_outlined),
            SizedBox(
              width: 16,
            ),
            Icon(Icons.comment_outlined),
            SizedBox(
              width: 16,
            ),
            Icon(Icons.repeat),
            SizedBox(
              width: 16,
            ),
            Icon(Icons.share_outlined),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Text(comment),
            const SizedBox(
              width: 16,
            ),
            Text(like)
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        const Divider(),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}
