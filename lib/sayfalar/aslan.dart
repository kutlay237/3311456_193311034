import 'package:flutter/material.dart';
class Aslan extends StatelessWidget {
  const Aslan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aslan'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(

          children: [
            Center(child: Text('Aslan burcu erkeği: Gururnun okşanmasından, hizmet görmekten, pohpohlanmaktan hoşlanır. Ne kadar şık ve yakışıklı olduğunu sıkça tekrarlamanız gerekebilir. Baba olmak için doğmuştur, kendisi baba olmasa da korumacı ve kollayıcı özellikleriyle baba rolü üstlenebilir.Aslan burcu kadını: Giyinmeye, süslenmeye meraklıdır. Girdiği ortamlarda kıyafet, aksesuar ve saçlarıyla hemen dikkatleri üzerine çeker. Sahne duruşu ve yürüyüşüne sahiptir. Gururunu kıracak herhangi bir söz ve davranıştan özellikle sakınmanız gerekir. ')),
          ],
        ),
      ),
    );
  }
}
