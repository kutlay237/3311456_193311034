import 'package:flutter/material.dart';
class Ikizler extends StatelessWidget {
  const Ikizler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('İkizler'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(

          children: [

           Center(
             child: Text('İkizler burcu kadını: Değişime herkesten çok ihtiyacı vardır. bulunduğu ortamda çabuk sıkılır, dışarı çıkmak, hava almak ister. Özgürlüğüne karışılmamalıdır. tatlı dilli ve konuşkandır. Dost canlısı yönü etrafında pek çok kişinin bulunmasını sağlar. Akıllı ve zekidir, ne istediğini çabuk bilir ve ona hızla ulaşmak için pratik yolları kolayca bulur.İkizler burcu erkeği: Sevimli ve canayakındır. Beğendiği kişiyi güzel sözleri, akılcı konuşması, bilgi ve birikimiyle kolayca etkileyebilir. Gezmeyi, seyahati sever, hareketli, değişken bir hayatı tercih eder. Aşktan çabuk sıkılabilir, sadakat konusunda çok beklenti içinde olmamak gerekir, zira sürekli değişim arar hayatında. Zorlu durumlar karşısında pratik çözümleriyle yol göstericidir.'),
           )  ],
        ),
      ),
    );
  }
}
