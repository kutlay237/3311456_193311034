import 'package:flutter/material.dart';
class Terazi extends StatelessWidget {
  const Terazi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terazi'),
      ),     body: Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(

        children: [
          Center(child: Text('Terazi burcu erkeği: Sakin, uyumlu görüntüsünün ardında ne istediğini iyi bilen ve dominant bir yapısı vardır. Huzur onun için önemlidir. Sanata düşkündür. Keyif aldığı konularda para harcamayı sever. İlişkisinde denge ve eşitlik bekler.Terazi burcu kadını: Zarafeti ve güzelliğiyle dikkat çekicidir. Akıllı ve sabırlıdır, çatışmadan hoşlanmaz, dengeli, uyumlu bir birliktelik arar. Gizli mükemmeliyetçi bir yönü vardır. Politik ve kibar tutumu ve davranışlarıyla takdir toplar.')),
        ],
      ),
    ),
    );
  }
}
