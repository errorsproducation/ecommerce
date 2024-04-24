import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:keyboard/Models/Product.dart';
class Service{


  Future<List<dynamic>> fetchData() async {
    var l;
    final dio=Dio();
    try {
      final response = await dio.get('https://dummyjson.com/products');
      if (response.statusCode == 200) {
        l=response.data['products'] as List;
        print(l.length);
        print(l[1]['title']);
      } else {
        print('Failed to load data: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching data: $e');
    }
    return l;

  }
}

final provider=Provider<Service>((ref)=>Service());