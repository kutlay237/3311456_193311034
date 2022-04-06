import 'package:flutter/material.dart';
class Oglak extends StatelessWidget {
  const Oglak({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Oğlak'),
      ),     body: Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(

        children: [
          Center(child: Text('Oğlak burcu erkeği: Güvenilirdir. Hiçbir şeyş kolay kolay kabul etmez, çok az şeyi kabul eder, ancak tamam dediğinde sonuna kadar güvenebilirsiniz. Zamanlaması çok iyidir, dakiktir. Disiplin, düzen, kural anlayışıyla zaman zaman sıkıcı olabilir ama sizi asla yarı yolda bırakmayacağından emin olabilirsiniz.Oğlak burcu kadını: Evine ve ailesine düşkündür. Yalnız kalmayı, tek başına hareket etmeyi sever. Kendi kural ve prensipleri vardır. Zaman zaman fazlasıyla disiplinli ve soğuk olabilir. İyi bir iş kadınıdır. Çalışmıyorsa bile evinde, ailesine karşı sorumluluklarının son derece bilincinde, tam bir görev insanıdır.')),],
      ),
    ),
    );
  }
}
