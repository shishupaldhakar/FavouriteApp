import 'package:flutter/cupertino.dart';

class FavouriteProvider with ChangeNotifier {
  List<int> favouriteItem = [];
  void addFavourite(value) {
    favouriteItem.add(value);
    notifyListeners();
  }

  void removeFavourite(value) {
    favouriteItem.removeAt(value);
    notifyListeners();
  }
}
