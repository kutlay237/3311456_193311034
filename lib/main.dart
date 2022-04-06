import 'package:flutter/material.dart';
import 'package:untitled1/sehir.dart';
import 'package:untitled1/yas.dart';
import 'sayfalar/akrep.dart';
import 'sayfalar/aslan.dart';
import 'sayfalar/balik.dart';
import 'sayfalar/basak.dart';
import 'sayfalar/boga.dart';
import 'sayfalar/ikizler.dart';
import 'sayfalar/koc.dart';
import 'sayfalar/kova.dart';
import 'sayfalar/oglak.dart';
import 'sayfalar/terazi.dart';
import 'sayfalar/yay.dart';
import 'sayfalar/yengec.dart';
import 'sayfalar/widgetlar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Burçlar')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
            child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide.merge(BorderSide(color: Colors.red),
                      BorderSide(color: Colors.red)),
                  bottom: BorderSide.merge(BorderSide(color: Colors.red),
                      BorderSide(color: Colors.red)),
                  left: BorderSide.merge(BorderSide(color: Colors.red),
                      BorderSide(color: Colors.red)),
                  right: BorderSide.merge(BorderSide(color: Colors.red),
                      BorderSide(color: Colors.red)),
                ),
              ),
              child: Text(
                  'Astrolojide burçlar, ekliptiğin iki yanında, aşağı yukarı 10 derece genişliğinde, içinde Güneşin ve gezegenlerin döndüğü zodyak kuşağı ile belirlenir. Ekliptik, dünyadan bakan birinin gözüktüğü şekliyle Yeryüzünün Güneş çevresinde bir yılda çizdiği görünür yörüngesinden başka bir şey değildir diğer bir deyişle yer-merkezli sistemin bir verisidir.'),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Sol bölümden bir burç seçiniz.',
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        )),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Kutlay"),
              accountEmail: Text("193311034"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                backgroundImage: AssetImage('assets/a.jpeg',

                ),
              ),
            ),
            ListTile(
              title: Text("Koç"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Koc()));
              },
            ),
            ListTile(
              title: Text("Boğa"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Boga()));
              },
            ),
            ListTile(
              title: Text("İkizler"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Ikizler()));
              },
            ),
            ListTile(
              title: Text("Yengeç"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Yengec()));
              },
            ),
            ListTile(
              title: Text("Aslan"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Aslan()));
              },
            ),
            ListTile(
              title: Text("Başak"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Basak()));
              },
            ),
            ListTile(
              title: Text("Terazi"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Terazi()));
              },
            ),
            ListTile(
              title: Text("Akrep"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Akrep()));
              },
            ),
            ListTile(
              title: Text("Yay"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Yay()));
              },
            ),
            ListTile(
              title: Text("Oğlak"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Oglak()));
              },
            ),
            ListTile(
              title: Text("Kova"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Kova()));
              },
            ),
            ListTile(
              title: Text("Balık"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Balik()));
              },
            ),
            ListTile(
              title: Text("Burcunu Öğren"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Widgetlar()));
              },
            ),
            ListTile(
              title: Text("Yaşını Hesapla"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Yas()));
              },
            ),
            ListTile(
              title: Text("Hangi Şehirde Yaşamalısın"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Sehir()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
