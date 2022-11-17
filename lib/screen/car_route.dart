import 'package:flutter/material.dart';

import 'pembayaran_screen.dart';

class CarRoute extends StatelessWidget {
  final String name;
  final String image;
  final String per;
  final String harga;

  const CarRoute(
      {Key? key,
      required this.name,
      required this.image,
      required this.per,
      required this.harga})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              image,
              width: MediaQuery.of(context).size.width,
              height: 300,
              fit: BoxFit.cover,
            ),
            Text(name),
            SizedBox(height: 30),
            _price(),
            Divider(height: 50),
            _spec(),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [Text("per Day"), Text("200-300K")],
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => PembayaranScreen(
                              name: name,
                              per: per,
                              harga: harga,
                            )),
                      ),
                    );
                  },
                  child: Text("Rent Now"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _spec() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 32.0),
          child: Text("Spesification"),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
              width: 150,
              child: ChoiceChip(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                selectedColor: Colors.blue,
                selected: true,
                label: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Power"),
                    Text("102 HP"),
                  ],
                ),
              ),
            ),
            SizedBox(width: 20),
            SizedBox(
              height: 100,
              width: 150,
              child: ChoiceChip(
                selected: false,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                label: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Capacity"),
                    Text("6 Seats"),
                  ],
                ),
              ),
            ),
            SizedBox(width: 20),
            SizedBox(
              height: 100,
              width: 150,
              child: ChoiceChip(
                selected: false,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                label: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Engine"),
                    Text("1329 cc"),
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget _price() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 32.0),
          child: Text("Price"),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
              width: 150,
              child: ChoiceChip(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                selectedColor: Colors.blue,
                selected: true,
                label: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Hour"),
                    Text("Rp. 10-20K"),
                  ],
                ),
              ),
            ),
            SizedBox(width: 20),
            SizedBox(
              height: 100,
              width: 150,
              child: ChoiceChip(
                selected: false,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                label: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Day"),
                    Text("Rp. 200-300K"),
                  ],
                ),
              ),
            ),
            SizedBox(width: 20),
            SizedBox(
              height: 100,
              width: 150,
              child: ChoiceChip(
                selected: false,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                label: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Week"),
                    Text("Rp. 1250-1750K"),
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
