import 'package:flutter/material.dart';
import 'package:hotel/hotellist.dart';
import 'package:hotel/itemCalculate.dart';
import 'package:hotel/thankyou.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:hotel/checkout.dart';

void main() => runApp(MyApp(
      model: itemCalculate(),
    ));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final itemCalculate model;
  const MyApp({Key key, @required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScopedModel<itemCalculate>(
      model: model,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Hotel Booking',
        home: ListScreen(),
        routes: {
          '/checkout': (context) => CheckoutPage(),
          '/thankyou': (context) => ThankyouPage()
        },
      ),
    );
  }
}

class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[50],
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('Hotel' + ' Total: ' +
            ScopedModel.of<itemCalculate>(context, rebuildOnChange: true)
                .totalCartValue
                .toString() +
            '฿'),
        actions: <Widget>[
          FlatButton(
              child: Text(
                "Clear",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () =>
                  ScopedModel.of<itemCalculate>(context).clearCart()),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () => Navigator.pushNamed(context, '/checkout'),
          )
        ],
      ),
      body: ListView.builder(
        itemExtent: 80,
        itemCount: hotelList.length,
        itemBuilder: (context, index) {
          return ScopedModelDescendant<itemCalculate>(
              builder: (context, child, model) {
            return ListTile(
                leading: Image.network(hotelList[index].imageUrl),
                title: Text(hotelList[index].title),
                subtitle: Text("\฿" + hotelList[index].price.toString()),
                trailing: OutlineButton(
                    child: Text("Add"),
                    onPressed: () => model.addProduct(hotelList[index])));
          });
        },
      ),
    );
  }
}
