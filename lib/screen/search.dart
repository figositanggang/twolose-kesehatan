import 'package:flutter/material.dart';
import '/widget/my_search_bar.dart';

class search extends StatefulWidget {
  search({Key? key}) : super(key: key);

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  final List pencarian = [
    "Dokter Terbaik",
    "Obat Sakit Perut",
    "Cara Menjaga badan tetap sehat di rumah",
    "Khasiat ikan salmon",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: MySearchBar(),
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("SEARCH")],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: pencarian
                          .map(
                            (e) => Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(Icons.timelapse),
                                        Text(e.toString()),
                                      ],
                                    ),
                                    Icon(Icons.keyboard_arrow_left_sharp)
                                  ],
                                ),
                                Divider(),
                              ],
                            ),
                          )
                          .toList(),
                    ),
                  ),
                  Text("Lihat Lainnya"),
                ],
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Pencarian Populer..."),
                    Divider(),
                    Row(
                      children: [
                        Text("RSUD"),
                        Padding(
                          padding: const EdgeInsets.only(left: 32),
                          child: Image.network(
                              "https://res.cloudinary.com/egisitampanmaut/image/upload/v1656664422/aw/rs1_2_j99khq.png"),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      children: [
                        Text("Vaksin"),
                        Padding(
                          padding: const EdgeInsets.only(left: 32),
                          child: Image.network(
                              "https://res.cloudinary.com/egisitampanmaut/image/upload/v1656664422/aw/Sertifikat-Vaksin-Covid-19_2_kjvceg.png"),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      children: [
                        Text("Herbal"),
                        Padding(
                          padding: const EdgeInsets.only(left: 32),
                          child: Image.network(
                              "https://res.cloudinary.com/egisitampanmaut/image/upload/v1656664422/aw/jahe1_2_bhb0rk.png"),
                        ),
                      ],
                    ),
                    Divider(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
