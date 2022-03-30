import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class BookingLocation with ChangeNotifier{
  late String id;
  late String title;
  late String description;
  late double price;
  late String imageUrl;
  late bool isFavorite;

  BookingLocation({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.isFavorite,
  });

  void toggleFavoriteStatus() async {
    final oldStatus = isFavorite;
    isFavorite = !isFavorite;
    notifyListeners();
    final url = Uri.http('https://parking-75658-default-rtdb.firebaseio.com/',
        '/bookings/$id.json');
    try {
      final response = await http.patch(url, body:
      json.encode({
        'isFavorite': isFavorite,
      }),
      ); if(response.statusCode >=400){
        isFavorite = oldStatus;
        notifyListeners();
      }
    } catch(error) {
      isFavorite = oldStatus;
      notifyListeners();
    }
  }

}