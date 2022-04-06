import 'package:flutter/material.dart';
class Balik extends StatelessWidget {
  const Balik({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Balık'),
      ),     body: Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(

        children: [
          Center(child: Text('Balık burcu erkeği: Etrafında olan biten her şeyden ve etrafındaki herkesten kolayca etkilenebilen hassas kişilerdir. Tam olarak anlaşılamayan, kendilerini de belirli kalıplar içinde tanımlayamayan muğlak, gizemli, karmaşık yönleri vardır. Şiire ve müziğe yatkın, romantik erkeklerdir.Balık burcu kadını: Masalsı, büyüleyici bir güzelliğe sahip olabilir. Gözleri anlamlı, derin ve oldukça etkileyicidir. Sinema aktrisi havasında olabilir. Giyinmeye, makyaja meraklıdır. Hassas ve alıngandır ancak her ne kadar fazlaca etki altında kalsa da bir şekilde zor durumlardan sıyrılmasını, kurtulmasını bilir. Akışta yaşar.')),
        ],
      ),
    ),
    );
  }
}
