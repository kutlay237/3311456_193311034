import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'dart:core';
import 'package:intl/intl.dart';

class Sehir extends StatefulWidget {
  const Sehir({Key? key}) : super(key: key);

  @override
  State<Sehir> createState() => _WidgetlarState();
}

class _WidgetlarState extends State<Sehir> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hangi Şehirde Yaşamalısın'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Koç: Ankara',
              ),
              Text(
                'Boğa: Manisa',
              ),
              Text(
                'İkizler: Konya',
              ),
              Text(
                'Yengeç: Istanbul',
              ),
              Text(
                'Aslan: Adana',
              ),
              Text(
                'Başak: Bursa',
              ),
              Text(
                'Terazi: Afyon',
              ),
              Text(
                'Akrep: Izmir',
              ),
              Text(
                'Yay: Van',
              ),
              Text(
                'Oğlak: Trabzon',
              ),
              Text(
                'Kova: Kocaeli',
              ),
              Text(
                'Balık: Mersin',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
