import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/beranda_provider.dart';
import 'car_route.dart';

class Beranda extends StatefulWidget {
  const Beranda({Key? key}) : super(key: key);

  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<BottomBarProvider>(context);
    final List navigations = [
      HomeNavigation(),
      ChatNavigation(),
      ProfileScreen(),
    ];

    return Scaffold(
      body: navigations[prov.index],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box), label: "Account"),
        ],
        currentIndex: prov.index,
        onTap: (idx) => prov.setIndex = idx,
      ),
    );
  }
}

// Home
class HomeNavigation extends StatefulWidget {
  const HomeNavigation({Key? key}) : super(key: key);

  @override
  _HomeNavigationState createState() => _HomeNavigationState();
}

class _HomeNavigationState extends State<HomeNavigation> {
  final cars = [
    {
      "name": "Toyota Avanza Veloz",
      "url":
          "https://res.cloudinary.com/unlinked/image/upload/v1655978703/cars/3-veloz-platinum-white-pearl_xmjcmi.png",
      "per": "per Day",
      "harga": "Rp 200.00",
    },
    {
      "name": "Honda Mobilio",
      "url":
          "https://res.cloudinary.com/unlinked/image/upload/v1655978810/cars/new-mobilio-phoenix-orange_g0yl92.png",
      "per": "per Week",
      "harga": "Rp 250.00",
    },
    {
      "name": "Toyota Innova Reborn",
      "url":
          "https://res.cloudinary.com/unlinked/image/upload/v1655978873/cars/1_innova-super-white-2_0_lgadkl.png",
      "per": "per Hour",
      "harga": "Rp 20.00",
    },
    {
      "name": "Toyota Alphard",
      "url":
          "https://res.cloudinary.com/unlinked/image/upload/v1655978911/cars/Toyota_Alphard_Vellfire_sjdhgl.png",
      "per": "per Week",
      "harga": "Rp 500.00",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                child: Image.network(
                    'https://res.cloudinary.com/unlinked/image/upload/v1655978264/cars/6149a20c72091_rhd3mq.jpg'),
              ),
              SizedBox(height: 30),
              Text(
                "Telusuri Kategori",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 15),
              Column(
                children: List.generate(
                  cars.length,
                  (i) => CarCard(
                    name: cars[i]["name"].toString(),
                    url: cars[i]["url"].toString(),
                    per: cars[i]["per"].toString(),
                    harga: cars[i]["harga"].toString(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CarCard extends StatelessWidget {
  final String name;
  final String url;
  final String per;
  final String harga;

  const CarCard({
    Key? key,
    required this.name,
    required this.url,
    required this.per,
    required this.harga,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                CarRoute(name: name, image: url, per: per, harga: harga),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 25),
                  ),
                  Text("black/white/red/grey")
                ],
              ),
              Image.network(
                url,
                width: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Chat
class ChatNavigation extends StatefulWidget {
  const ChatNavigation({Key? key}) : super(key: key);

  @override
  _ChatNavigationState createState() => _ChatNavigationState();
}

class _ChatNavigationState extends State<ChatNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Text("Anda tidak memiliki riwayat chat sejauh ini."),
                  Icon(Icons.search,
                      size: 200, color: Colors.black.withOpacity(.5)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Account
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _card(),
              SizedBox(height: 30),
              _thisButton(Icons.settings, "Pengaturan", "Privasi dan logout"),
              SizedBox(height: 30),
              _thisButton(Icons.security, "Pengaturan", "Privasi dan logout"),
              SizedBox(height: 30),
              _thisButton(Icons.book, "Pengaturan", "Privasi dan logout"),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  Widget _card() {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            foregroundImage: NetworkImage(
                "https://res.cloudinary.com/egisitampanmaut/image/upload/v1657001074/yosuanto/pleasant-looking-serious-man-stands-profile-has-confident-expression-wears-casual-white-t-shirt_273609-16959_fmfhpm.jpg"),
            radius: 50,
          ),
          Column(
            children: [
              Text("Username"),
              TextButton(onPressed: () {}, child: Text("lihat dan edit profil"))
            ],
          )
        ],
      ),
    );
  }

  Widget _thisButton(IconData icon, String text1, String text2) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(icon),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(text1),
              Text(
                text2,
                style: TextStyle(color: Colors.white.withOpacity(.5)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
