import 'package:flutter/material.dart';

class AktivitasPage extends StatelessWidget {
  const AktivitasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Aktivitas',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
            bottom: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: Colors.black,
                overlayColor:
                    MaterialStatePropertyAll(Colors.black.withOpacity(0.2)),
                labelColor: Colors.black,
                isScrollable: true,
                tabs: const [
                  Tab(
                    text: 'Semua',
                  ),
                  Tab(
                    text: 'Permintaaan',
                  ),
                  Tab(
                    text: 'Balasan',
                  ),
                  Tab(
                    text: 'Penyebutan',
                  ),
                  Tab(
                    text: 'Kutipan',
                  ),
                  Tab(
                    text: 'Postingan Ulang',
                  ),
                ]),
          ),
          body: const TabBarView(children: [
            SemuaTab(),
            DaftarPermintaan(),
            Balasan(),
            Penyebutan(),
            Kutipan(),
            PostinganUlang()
          ]),
        ));
  }
}

class SemuaTab extends StatelessWidget {
  const SemuaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Utas(
                image: 'assets/images/spongebob.png',
                username: 'spongebob',
                utas: 'Hari ini bikini bottom cerah',
                waktu: '3 hari',
              ),
              SizedBox(
                height: 16,
              ),
              Utas(
                image: 'assets/images/sandy.png',
                username: 'sandy_ilmuan',
                utas: 'Eksperimen roket',
                waktu: '5 hari',
              ),
              SizedBox(
                height: 16,
              ),
              Utas(
                image: 'assets/images/squidward.png',
                username: 'squiadward1140',
                utas: 'Membosankan seperti hari sebelumnya',
                waktu: '1 mg',
              ),
              SizedBox(
                height: 8,
              ),
              Divider(
                thickness: 1,
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Text('Disarankan untuk anda'),
                  Spacer(),
                  Text(
                    'Lihat Semua',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              SaranUntukAnda(),
              SizedBox(
                height: 16,
              ),
              Divider(),
              DaftarPermintaan()
            ],
          ),
        ),
      ),
    );
  }
}

class DaftarPermintaan extends StatelessWidget {
  const DaftarPermintaan({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            ProfilePermintaan(
                image: 'assets/images/patrick.png',
                waktu: '5 mg',
                username: 'patrick'),
            SizedBox(
              height: 16,
            ),
            ProfilePermintaan(
                image: 'assets/images/garry.png',
                waktu: '7 mg',
                username: 'garry_'),
            SizedBox(
              height: 16,
            ),
            ProfilePermintaan(
                image: 'assets/images/plankton.png',
                waktu: '10 mg',
                username: 'plankton'),
          ],
        ),
      ),
    );
  }
}

class ProfilePermintaan extends StatelessWidget {
  final String image;
  final String username;
  final String waktu;
  const ProfilePermintaan(
      {super.key,
      required this.image,
      required this.waktu,
      required this.username});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage(image),
        ),
        const SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Text(
                username,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                waktu,
                style: const TextStyle(color: Colors.black45),
              ),
            ]),
            const Text(
              'Permintaan Mengikuti',
              style: TextStyle(color: Colors.black45),
            ),
          ],
        ),
        const Spacer(),
        Column(
          children: [
            Row(
              children: [
                Container(
                  width: 110,
                  height: 30,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.0, color: Colors.black38),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                      child: Text(
                    "Konformasi",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  )),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.0, color: Colors.black38),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(child: Icon(Icons.close)),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}

class SaranUntukAnda extends StatelessWidget {
  const SaranUntukAnda({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          Row(children: [
            ProfileCard(
              image: 'assets/images/patrick.png',
              nama: 'Patrick Star',
              username: 'patrick',
            ),
            SizedBox(
              width: 8,
            ),
            ProfileCard(
              image: 'assets/images/garry.png',
              nama: 'Garry',
              username: 'garry_',
            ),
            SizedBox(
              width: 8,
            ),
            ProfileCard(
              image: 'assets/images/plankton.png',
              nama: 'SiKecilPlankton',
              username: 'plankton',
            ),
          ]),
        ],
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  final String image;
  final String username;
  final String nama;
  const ProfileCard(
      {super.key,
      required this.image,
      required this.nama,
      required this.username});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 150,
          height: 220,
          decoration: BoxDecoration(
              color: Colors.black12.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.close,
                      size: 16,
                    )
                  ],
                ),
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(image),
                  backgroundColor: Colors.white,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(nama),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  username,
                  style: const TextStyle(color: Colors.black54),
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)),
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  width: double.infinity,
                  child: const Center(
                      child: Text(
                    'Ikuti',
                    style: TextStyle(color: Colors.white),
                  )),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class Utas extends StatelessWidget {
  final String image;
  final String username;
  final String utas;
  final waktu;
  const Utas(
      {super.key,
      required this.image,
      required this.utas,
      required this.waktu,
      required this.username});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage(image),
        ),
        const SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Text(
                username,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(waktu)
            ]),
            const Text('Memulai Utas'),
            Text(
              utas,
              style: const TextStyle(fontSize: 16),
            )
          ],
        ),
      ],
    );
  }
}

class Balasan extends StatelessWidget {
  const Balasan({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Belum ada yang bisa ditampilkan disini')),
    );
  }
}

class Penyebutan extends StatelessWidget {
  const Penyebutan({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Belum ada yang bisa ditampilkan disini')),
    );
  }
}

class Kutipan extends StatelessWidget {
  const Kutipan({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Belum ada yang bisa ditampilkan disini')),
    );
  }
}

class PostinganUlang extends StatelessWidget {
  const PostinganUlang({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Belum ada yang bisa ditampilkan disini')),
    );
  }
}
