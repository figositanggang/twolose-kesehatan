import 'package:flutter/material.dart';

class infokesehatan extends StatefulWidget {
  infokesehatan({Key? key}) : super(key: key);

  @override
  State<infokesehatan> createState() => _infokesehatanState();
}

class _infokesehatanState extends State<infokesehatan> {
  @override
  List data = [
    {"Tittle" : "apakah batuk juga gejala dari virus covid-19?","Subtitle" : "Batuk biasa dan batuk gejala COVID-19 memang tampak mirip. ","gambar" : "assets/penyakit/1.jpg"},
    {"Tittle" : "Kenali penyakit kanker lebih dalam yuk","Subtitle" : "Kanker atau tumor ganas adalah pertumbuhan sel atau jaringan yang tidak terkendali","gambar" : "assets/penyakit/2.png"},
    {"Tittle" : "Bagaimanakah cara sembuh dari Covid-19?","Subtitle" : "Banyak cara untuk sembuh dari covid 10.namun beberapa hal yang harus di perhatikan","gambar" : "assets/penyakit/3.jpeg"},
    {"Tittle" : "Tubuh cepat lelah,waspada berbagai penyakit berikut ini","Subtitle" : "Lelah dapat dikatakan normal jika bisa diatasi dengan tidur.namun bagaimana","gambar" : "assets/penyakit/4.jpg"},
    {"Tittle" : "Vaksin Booster COVID-19 apa bedanya dengan vaksin biasa?","Subtitle" : "Banyaknya masyarakat yang sudah melakukan vaksinisasi,tapi taukah anda apa perbedaan vaksinisasi covid-19 dengan vaksin lainnya?","gambar" : "assets/penyakit/5.jpg"},

  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("INFO KESEHATAN")),
      body: ListView(
        children: data.map((e) => Column(
          children: [
            ListTile(
            title: Text(e['Tittle'],textAlign: TextAlign.center,),
            subtitle: Text(e['Subtitle']),
            leading: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                image: DecorationImage(
                  image: AssetImage(e['gambar']),
                  fit: BoxFit.fill
                )
              ),
            ),
          ),
          Divider(
          )
          ],
        )).toList()

      ),
    );
  }
}