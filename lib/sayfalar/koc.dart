import 'package:flutter/material.dart';
class Koc extends StatelessWidget {
  const Koc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Koç'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(

          children: [
            Center(child: Text('Koç burcu erkeği: Bir komutan edasında olabilir ve yönetme arzusu ruhunda vardır. Hızlıdır, bir süreci tamamladığında diğerine geçmekte zorlanmaz ancak her şeyi çabuk tüketen ve çabuk sıkılan bir yapıya sahiptir. Sakin ve sabırlı bir eş veya ortak ararlar.Koç burcu kadını: Erkeksi özelliklere sahip, güçlü ve mücadeleci kadınlardır. Harekete geçmekten korkmaz, cesur ve girişimcidir. Ne istediğini bilir ve hızla kavuşmak ister. Sabırsız ve aceleci özellikleri hata yapmasına neden olabilir.')),
          ],
        ),
      ),
    );
  }
}
