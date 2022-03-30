import 'package:flutter/material.dart';
import '../http_exception.dart';
import 'booking_locations.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LocationList with ChangeNotifier {
  List<BookingLocation> _items = [
    BookingLocation(
      id: 'p1',
      title: 'SMC NANPURA',
      description: 'SMC parking available in Nanpura, very near to Bhagal and station',
      price: 10.00,
      imageUrl:
      'images/image4.jpg',
      isFavorite: false,
    ),
    BookingLocation(
      id: 'p2',
      title: 'Nishal Arcade, near Madhuvan Circle',
      description: 'Flexible space for parking, near to Times Cinema',
      price: 15.00,
      isFavorite: false,
      imageUrl: 'images/image4.jpg'
    ),

  ];

  // var _showFavoritesOnly = false;
  final String authToken;

  LocationList(this.authToken, this._items);

  List<BookingLocation> get items {
    // if(_showFavoritesOnly) {
    //   return _items.where((prodItem) => prodItem.isFavorite).toList();
    // }
    return [..._items];
  }

  List<BookingLocation> get favoriteItems {
    return _items.where((prodItem) => prodItem.isFavorite).toList();
  }

  // void showFavoritesOnly() {
  //   _showFavoritesOnly = true;
  //   notifyListeners();
  // }
  //
  // void showAll() {
  //   _showFavoritesOnly = false;
  //   notifyListeners();
  // }

  BookingLocation findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  Future<void> fetchAndSetLocationList() async {
    final url = Uri.http(
        'https://parking-75658-default-rtdb.firebaseio.com/',
        '/LocationList.json?auth=$authToken');
    try {
      final response = await http.get(url);
      final extractedData = json.decode(response.body) as Map<String, dynamic>;
      if(extractedData == null) {
        return;
      }
      final List<BookingLocation> loadedLocationList = [];
      extractedData.forEach((prodId, prodData) {
        loadedLocationList.add(BookingLocation(
          id: prodId,
          title: prodData['title'],
          description: prodData['description'],
          price: prodData['price'],
          isFavorite: prodData['isFavorite'],
          imageUrl: prodData['imageUrl'],
        ));
      });
      _items = loadedLocationList;
      notifyListeners();
    } catch(error) {
      throw (error);
    }
  }

}