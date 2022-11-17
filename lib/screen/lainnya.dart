import 'package:flutter/material.dart';
import '/screen/infokesehatan.dart';
import '/screen/menumakanan.dart';
import '/screen/olahraga.dart';
import '/screen/rumahsakit.dart';
import '/screen/tanyadokter.dart';

class lainnyascreen extends StatefulWidget {
  lainnyascreen({Key? key}) : super(key: key);

  @override
  State<lainnyascreen> createState() => _lainnyascreenState();
}

class _lainnyascreenState extends State<lainnyascreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('E-HEALTH')),
      body: Container(
        // margin: EdgeInsets.symmetric(horizontal: 100),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => tanyadokter()));
                  },
                  child: Column(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            image: DecorationImage(
                                image: AssetImage("assets/tanya dokter.jpg"),
                                fit: BoxFit.fill)),
                      ),
                      Text("Tanya"),
                      Text('Dokter')
                    ],
                  ),
                  style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => rumahsakit()));
                  },
                  child: Column(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            image: DecorationImage(
                                image: AssetImage("assets/rs1.png"),
                                fit: BoxFit.fill)),
                      ),
                      Text("Rumah"),
                      Text("Sakit")
                    ],
                  ),
                  style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MenuMakanan()));
                  },
                  child: Column(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            image: DecorationImage(
                                image: AssetImage("assets/makanan.png"),
                                fit: BoxFit.fill)),
                      ),
                      Text("menu"),
                      Text('makanan')
                    ],
                  ),
                  style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Olahraga()));
                  },
                  child: Column(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            image: DecorationImage(
                                image: AssetImage("assets/sehat.png"),
                                fit: BoxFit.fill)),
                      ),
                      Text("olahraga")
                    ],
                  ),
                  style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => infokesehatan()));
                  },
                  child: Column(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            image: DecorationImage(
                                image: AssetImage("assets/sakit.png"),
                                fit: BoxFit.fill)),
                      ),
                      Text("info"),
                      Text('kesehatan')
                    ],
                  ),
                  style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => lainnyascreen()));
                  },
                  child: Column(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            image: DecorationImage(
                                image: AssetImage("assets/lainnya.png"),
                                fit: BoxFit.fill)),
                      ),
                      Text("lainnya")
                    ],
                  ),
                  style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
