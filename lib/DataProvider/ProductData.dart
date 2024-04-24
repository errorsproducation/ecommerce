import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:keyboard/Models/Product.dart';
import 'package:keyboard/Notifier/CartNotifier.dart';
import 'package:keyboard/Notifier/Download.dart';
import 'package:keyboard/Services/Services.dart';

final cartprovider=StateNotifierProvider<CartNotifier,List<String>>((ref) {
  return CartNotifier();
});

final productdataprovider=FutureProvider<List<dynamic>>((ref) {
  return ref.watch(provider).fetchData();
});

final downloadProvider = ChangeNotifierProvider<Download>((ref) {
  return Download();
});

final streamProvider = StreamProvider<String>((ref) {
  // Create and return your stream here
  late DateTime d;
  return Stream.periodic(Duration(seconds: 1,),((c) {
    d=DateTime.now();
    return d.toString();
  }));
});

final statepr=StateProvider<int>((ref) {
  return 0;
});




