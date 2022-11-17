import 'package:flutter/material.dart';
import '/screen/chat_screen.dart';

class tanyadokter extends StatefulWidget {
  tanyadokter({Key? key}) : super(key: key);

  @override
  State<tanyadokter> createState() => _tanyadokterState();
}

class _tanyadokterState extends State<tanyadokter> {
  @override
  List dokter = [
    {
      "fotodokter": "assets/dokter/dokter satu.jpg",
      "nama": "Dr.Novira Sulfianti, SP.M",
      "spesialis": "Spesialis Mata"
    },
    {
      "fotodokter": "assets/dokter/dokter dua.jpg",
      "nama": "Dr. Pranoto Trilakson ",
      "spesialis": "Spesialis Anak"
    },
    {
      "fotodokter": "assets/dokter/dokter tiga.jpg",
      "nama": "Dr. R. Arief Banu Pradipta",
      "spesialis": "Spesialis Penyakit dalam"
    },
    {
      "fotodokter": "assets/dokter/dokter empat.png",
      "nama": "Dr. Fifianti Putri Adela, SP.OG",
      "spesialis": "Sepesialis kandungan"
    },
    {
      "fotodokter": "assets/dokter/dokter duda.jpeg",
      "nama": "Dr. Agusnadi Talah, Ap.A",
      "spesialis": "khusus Anak"
    },
    {
      "fotodokter": "assets/dokter/fadhil.jpeg",
      "nama": "Dr. Fadhil, Ap.A",
      "spesialis": "khusus Anak"
    },
    {
      "fotodokter": "assets/dokter/dokter 16.jpeg",
      "nama": "Dr. Song He Kyo",
      "spesialis": "Umum"
    },
    {
      "fotodokter": "assets/dokter/onew.png",
      "nama": "Dr.Onew",
      "spesialis": "khusus Anak"
    },
    {
      "fotodokter": "assets/dokter/dokter 15.jpg",
      "nama": "Dr. Naya",
      "spesialis": "Kulit"
    },
    {
      "fotodokter": "assets/dokter/dokter 14.jpg",
      "nama": "Dr. Nabila",
      "spesialis": "Anak"
    },
    {
      "fotodokter": "assets/dokter/dokter 13.jpg",
      "nama": "Dr.Karin",
      "spesialis": "kecantikan"
    },
    {
      "fotodokter": "assets/dokter/dokter 12.jpg",
      "nama": "Dr.Jihyo",
      "spesialis": "THT"
    },
    {
      "fotodokter": "assets/dokter/dokter 11.jpg",
      "nama": "Dr.Wendy",
      "spesialis": "khusus Anak"
    },
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: ListView(
          children: dokter.map((e) {
            return Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        e['fotodokter'],
                                      ),
                                      fit: BoxFit.fill)),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(e['nama']),
                                  Text(e['spesialis'])
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          child: GestureDetector(
                            child: Text("konsultasi"),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => chatscreen())));
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                    height: 10,
                    thickness: 1,
                  )
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
