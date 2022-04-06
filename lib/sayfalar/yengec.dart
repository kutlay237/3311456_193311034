import 'package:flutter/material.dart';
class Yengec extends StatelessWidget {
  const Yengec({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yengeç'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(

          children: [
            Center(child: Text('Yengeç burcu erkeği: Annesine ve eşine düşkün, evine bağlı erkeklerdir. Mutfaktan, yemek yapmaktan, güzel sofralardan keyif alır. Algısı yüksek, anlayışlı, şefkatli ve merhametlidir ancak bunu abarttığında boğucu gelebiliYengeç burcu kadını: Güzel ve çekici kadınlardır, iyi bir eş ve anne olurlar, evlerinde zaman geçirmeyi, mutfakla ilgilenmeyi, yemek pişirmeyi ve yemeyi severler. Kadınlar, kadınsal konularla ve çocuklarla araları çok iyidir.')),
          ],
        ),
      ),
    );
  }
}
