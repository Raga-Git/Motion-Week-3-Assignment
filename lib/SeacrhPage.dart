import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          "Cari",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        )),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black12,
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 16),
                      width: double.infinity,
                      child: Row(
                        children: [
                          Icon(
                            Icons.search_rounded,
                            size: 20,
                            color: Colors.black38,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Cari",
                            style:
                                TextStyle(fontSize: 16, color: Colors.black38),
                          )
                        ],
                      )),
                  SizedBox(
                    height: 16,
                  ),
                  ProfileCard1(
                    image: "assets/images/spongebob.png",
                    username: "spongebob",
                    nama: "Spongebob Squrepants",
                    pengikut: "100k pengikut",
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  ProfileCard1(
                    image: "assets/images/patrick.png",
                    username: "patrick",
                    nama: "Patrick Star",
                    pengikut: "80k pengikut",
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  ProfileCard1(
                    image: "assets/images/garry.png",
                    username: "garry_",
                    nama: "Garry",
                    pengikut: "1m pengikut",
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  ProfileCard1(
                    image: "assets/images/squidward.png",
                    username: "squidward1140",
                    nama: "Squidward Tentacles",
                    pengikut: "10k pengikut",
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  ProfileCard1(
                    image: "assets/images/sandy.png",
                    username: "sandy_ilmuan",
                    nama: "Sandy Cheeks",
                    pengikut: "70k pengikut",
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

class ProfileCard1 extends StatelessWidget {
  final String image;
  final String username;
  final String nama;
  final pengikut;

  const ProfileCard1(
      {super.key,
      required this.image,
      required this.nama,
      required this.pengikut,
      required this.username});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage(image)
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              username,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Text(nama),
            Text(pengikut)
          ],
        ),
        Spacer(),
        Container(
          width: 110,
          height: 40,
          decoration: BoxDecoration(
              border: Border.all(width: 1.0, color: Colors.black38),
              borderRadius: BorderRadius.circular(14)),
          child: Center(
              child: Text(
            "Ikuti",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          )),
        )
      ],
    );
  }
}
