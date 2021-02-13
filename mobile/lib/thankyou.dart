import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(ThankyouPage());

class ThankyouPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text("Thank you"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
                margin: const EdgeInsets.fromLTRB(20, 200, 20, 20),
                child: Image.network(
                    'https://i.ytimg.com/vi/M4QTkYKn1_g/maxresdefault.jpg'))
          ],
        ),
      ),
    );
  }
}
