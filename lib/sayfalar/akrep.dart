import 'package:flutter/material.dart';
class Akrep extends StatelessWidget {
  const Akrep({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Akrep'),
      ),     body: Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(

        children: [
          Center(child: Text('Akrep burcu özellikleri: Mücadeleci, güçlü, yılmaz, hırslı kişilerdir. Pes ettiğini düşündüğünüz anda küllerinden yeniden doğabilir. Güvenilir, kaliteli insanlardır.Akrep burcu erkeği: Şeytan tüyü de denilebilecek farklı bir gizem, manyetizma ve çekiciliğe sahiptirler. Pek çok şeyin farkında değilmiş gibi dursalar da sezgileri sayesinde anlayışları, kavrayışları son derece güçlü erkeklerdir. Yalan ve riyaya tahammülleri yoktur. ')),
        ],
      ),
    ),
    );
  }
}
