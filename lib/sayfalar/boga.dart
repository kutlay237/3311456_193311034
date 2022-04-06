import 'package:flutter/material.dart';
class Boga extends StatelessWidget {
  const Boga({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Boga'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(

          children: [
            Center(child: Text('Boğa burcu erkeği: Güven ve sadakat önemlidir. Bir Boğa erkeğinin güvenini kazandıysanız sizden kolay kolay vazgeçmez. Süslü, bakımlı, makyajlı kadınlardan hoşlanır. Lüks, para ve maddiyat onun için önemlidir.Boğa burcu kadını: Giyinmekten, süslenmekten hoşlanan, her daim güzel görünmek isteyen, alımlı, bakımlı, güzel kadındır. İlişkilerinde güven çok önemlidir. Karşılığında sonsuz bir sadakat sunabilir. Para harcamayı, alışverişi sever ancak hesabını da bilir.')),
          ],
        ),
      ),
    );
  }
}
