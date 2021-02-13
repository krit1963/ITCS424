import 'package:scoped_model/scoped_model.dart';
import 'package:hotel/hotellist.dart';

class itemCalculate extends Model {
  List<Hotel> cart = [];
  double totalCartValue = 0;

  int get total => cart.length;

  void addProduct(hotel) {
    int index = cart.indexWhere((i) => i.id == hotel.id);
    print(index);
    if (index != -1)
      updateProduct(hotel, hotel.qty + 1);
    else {
      cart.add(hotel);
      calculateTotal();
      notifyListeners();
    }
  }

  void removeProduct(hotel) {
    int index = cart.indexWhere((i) => i.id == hotel.id);
    cart[index].qty = 1;
    cart.removeWhere((hotel) => hotel.id == hotel.id);
    calculateTotal();
    notifyListeners();
  }

  void updateProduct(hotel, qty) {
    int index = cart.indexWhere((i) => i.id == hotel.id);
    cart[index].qty = qty;
    if (cart[index].qty == 0) removeProduct(hotel);

    calculateTotal();
    notifyListeners();
  }

  void clearCart() {
    cart.forEach((f) => f.qty = 1);
    cart = [];
    totalCartValue = 0;
    notifyListeners();
  }

  void calculateTotal() {
    totalCartValue = 0;
    cart.forEach((f) {
      totalCartValue += f.price * f.qty;
    });
  }
}

class Product {
  int id;
  String title;
  String imageUrl;
  double price;
  int qty;

  Product({this.id, this.title, this.price, this.qty, this.imageUrl});
}
