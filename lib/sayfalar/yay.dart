import 'package:flutter/material.dart';
class Yay extends StatelessWidget {
  const Yay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yay'),
      ),     body: Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(

        children: [
          Center(child: Text('Yay burcu erkeği: Yay burcu erkeği özgürlüğü sever, ciddi bir birlikteliğiniz olabilir, evlenebilirsiniz ancak onu asla kısıtlamamalısınız. Bağlanmakta, ev erkeği olmakta zorlanır. Harika bir seyahat ortağı olur, eğlenceli zaman geçirebilirsiniz.Yay burcu kadını: Bağımsız bir ruha sahiptir. Gezmeyi, tozmayı, eğlenmeyi sever. Yeni yerler görmekten, yeni dost ve arkadaşlar tanımaktan, ufkunu ve sınırlarını zorlamaktan zevk alır. Bir Yay kadını ile asla sıkılmazsınız. Zor olan tek şey onun hızına ayak uydurabilmektir.')),],
      ),
    ),
    );
  }
}
