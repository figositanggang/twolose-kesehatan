import 'package:flutter/material.dart';

class PembayaranScreen extends StatelessWidget {
  final String name;
  final String per;
  final String harga;

  const PembayaranScreen(
      {Key? key, required this.name, required this.per, required this.harga})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Metode Pembayaran"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Container(
              alignment: Alignment.center,
              child: Text("Transfer via Bank"),
              width: MediaQuery.of(context).size.width,
              height: 50,
              color: Colors.black.withOpacity(.25),
            ),
            SizedBox(height: 30),
            _tf("Bank BCA"),
            SizedBox(height: 30),
            _tf("Bank BRI"),
            SizedBox(height: 30),
            _tf("Bank BNI"),
            SizedBox(height: 100),
            _card(context),
          ],
        ),
      ),
    );
  }

  Widget _tf(String label) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: label,
      ),
    );
  }

  Widget _card(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Tipe Mobil:"),
                  Text("Total Pembayaran:"),
                  Text(per),
                ],
              ),
              SizedBox(width: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name),
                  Text(harga),
                ],
              ),
            ],
          ),
          ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => Container(
                    width: MediaQuery.of(context).size.width,
                    height: 400,
                    child: Center(child: Text("Pembayaran Berhasil")),
                  ),
                );
              },
              child: Text("Konfirmasi")),
        ],
      ),
    );
  }
}
