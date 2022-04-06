import 'package:flutter/material.dart';
class Kova extends StatelessWidget {
  const Kova({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kova'),
      ),     body: Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(

        children: [
          Center(child: Text('Kova burcu erkeği: Evcimen olmaktan ziyade dışarıda bir hayatı tercih eden, arkadaşlıkları aileden önce gelen, farklı ve sıradışı erkeklerdir. Zeka ve akılcılıkları ile yol gösterirler, vizyoner bakış açılarıyla yaşadıkları topluma etki ederler.Kova burcu kadını: Farklıdır, sıradışıdır, zekidir. Ona ayak uydurmak çok da kolay değildir, bulunduğu ortamla uyumunu kendi yaratır. Oldukça sosyal ve arkadaş canlısı olsalar da eş seçimleri zordur. Teknolojik cihaz ve araçlar vazgeçilmezleridir.')),
        ],
      ),
    ),
    );
  }
}
