import 'package:assignment_raga_2/AktivitasPage.dart';
import 'package:assignment_raga_2/PostPage.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            title: Row(
          children: [
            const Icon(
              Icons.lock_outline,
              size: 30,
            ),
            const Spacer(),
            Image.asset(
              'assets/images/ig_outline.png',
              scale: 70,
            ),
            const SizedBox(
              width: 24,
            ),
            const Icon(
              Icons.menu_outlined,
              size: 30,
            ),
          ],
        )),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Crab',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 24),
                            ),
                            Text('tuan_crab'),
                            Text('99k Pengikut'),
                          ],
                        ),
                        Spacer(),
                        CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage('assets/images/crab.png'),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Container(
                      width: 181,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1.0, color: Colors.black38),
                          borderRadius: BorderRadius.circular(14)),
                      child: const Center(
                          child: Text(
                        "Edit Profil",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      )),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Container(
                      width: 181,
                      height: 40,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1.0, color: Colors.black38),
                          borderRadius: BorderRadius.circular(14)),
                      child: const Center(
                          child: Text(
                        "Bagikan Profil",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      )),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text('Disarankan untuk Anda'),
                const SizedBox(
                  height: 16,
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [SaranUntukAnda()]),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Divider(
                  thickness: 1,
                ),
                TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorColor: Colors.black,
                  labelColor: Colors.black,
                  overlayColor:
                      MaterialStatePropertyAll(Colors.black.withOpacity(0.2)),
                  tabs: const [
                    Tab(
                      text: 'Utas',
                    ),
                    Tab(
                      text: 'Balasan',
                    ),
                    Tab(
                      text: 'Postingan Ulang',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 16),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => PostPage(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                onPrimary: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                side: BorderSide(color: Colors.black12, width: 1)
                              ),
                              child: Text('Mulai utas pertama anda'),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Text('Anda belum memposting balasan apa pun'),
                      ),
                      Center(
                        child: Text('Anda belum memposting ulang utas apa pun'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
