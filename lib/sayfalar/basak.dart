import 'package:flutter/material.dart';
class Basak extends StatelessWidget {
  const Basak({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Başak'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(

          children: [
            Center(child: Text('Başak burcu erkeği: Akılcı ve pratik bir zekaya sahiptir. Dakiktir, çalışkandır, detaylara önem verir. Eleştirel ve titiz yönleri zaman zaman onu zorlayıcı kılabilir. Ancak hizmet odaklı yapısıyla yaşamınızda siz farkında olmadan hayatınızı kolaylaştıran kişidir.Başak burcu kadını: Başak burcu kadınına bir şey beğendirmek oldukça zordur. En küçük kusur ve detayları görebilecek göze sahiptir. Bazen bu detaylar içinde çok fazla kaybolabilir. Seçim yapmakta oldukça zorlanır, kuruntu ve evhamlar geliştirebilir.')),
          ],
        ),
      ),
    );
  }
}
