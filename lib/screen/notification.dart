import 'package:flutter/material.dart';
class notification extends StatefulWidget {
  notification({Key? key}) : super(key: key);

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  @override
  List data = [
    {"Tittle" : "Dokter Budi sedang malakukan siaran langsung: “Apakah OBAT HERBAL lebih ampuh dari RESEP DOKTER ","Subtitle" : "Baru Saja","gambar" : "assets/penyakit/1.jpg"},
    {"Tittle" : "Dokter abdul membalas pertanyaan anda tentang Sayuran kangkung","Subtitle" : "2 jam yang lalu","gambar" : "assets/penyakit/2.png"},
    {"Tittle" : "Dokter Budi sedang malakukan siaran langsung: “Hidup sehat tanpa Rokok”","Subtitle" : "5 jam yang lalu","gambar" : "assets/penyakit/3.jpeg"},
    {"Tittle" : "Poniman dan 134 lainnya telah mengikuti anda, lihat aktivitas apa yang mereka lakukan","Subtitle" : "7 jam yang lalu","gambar" : "assets/penyakit/4.jpg"},
    {"Tittle" : "Dokter Arief sedang melaksanakan siaran langsung ","Subtitle" : "2 hari yang lalu","gambar" : "assets/penyakit/5.jpg"},

  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.notifications),title: Text("NOTIFICATION")),
       body: ListView(
        children: data.map((e) => Column(
          children: [
            ListTile(
            title: Text(e['Tittle'],),
            subtitle: Text(e['Subtitle']),
            leading: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(e['gambar']),
                  fit: BoxFit.fill
                )
              ),
            ),
          ),
          Divider(
            color: Colors.grey,
            thickness: 2,
          )
          ],
        )).toList()

      ),
    );
  }
}