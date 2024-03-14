import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Sulai_',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Icon(Icons.keyboard_arrow_down_rounded),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.add_circle_outline_rounded),
                        SizedBox(width: 10),
                        Icon(Icons.menu),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                              image: AssetImage('assets/lai.jpeg'),
                              fit: BoxFit.cover)),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Jumlah('99', 'Postingan'),
                          Jumlah('956Rb', 'Pengikut'),
                          Jumlah('1000', 'Mengikuti')
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Text(
                  'Sulaiman',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                Text('Studi Independen LearningX'),
                Text('Mobile Development Application'),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Edit Profil',
                          style: TextStyle(color: Colors.black)),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[200],
                          minimumSize: Size(10, 30)),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Bagikan Profil',
                          style: TextStyle(color: Colors.black)),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[200],
                          minimumSize: Size(10, 30)),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.perm_contact_calendar_rounded))
                  ],
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Highlight(image: 'assets/rinjani.jpg', nama: 'Rinjani'),
                        Highlight(image: 'assets/rinjani.jpg', nama: 'Toba'),
                        Highlight(image: 'assets/rinjani.jpg', nama: 'Bromo'),
                        Highlight(image: 'assets/rinjani.jpg', nama: 'Kerinci'),
                        Highlight(image: 'assets/rinjani.jpg', nama: 'Rinjani'),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                        color: Colors.black,
                        onPressed: () {},
                        icon: Icon(Icons.grid_4x4_outlined)),
                    IconButton(
                        color: Colors.black,
                        onPressed: () {},
                        icon: Icon(Icons.account_box_outlined))
                  ],
                ),
              ],
            ),
            GridView.count(
              shrinkWrap: true,
              physics: AlwaysScrollableScrollPhysics(),
              crossAxisCount: 3,
              mainAxisSpacing: 2,
              crossAxisSpacing: 2,
              children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/lai.jpeg'),
                          fit: BoxFit.cover)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Highlight extends StatelessWidget {
  const Highlight({
    super.key,
    required this.image,
    required this.nama,
  });

  final String image;
  final String nama;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover)),
          ),
          Text(nama)
        ],
      ),
    );
  }
}

class Jumlah extends StatelessWidget {
  Jumlah(this.angka, this.title);

  final String angka;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          angka,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(title)
      ],
    );
  }
}
