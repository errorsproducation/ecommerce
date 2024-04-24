import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
class CartNotifier extends StateNotifier<List<String>>{
   CartNotifier() : super([]);
   void add(String string){
      state=[...state,string];
   }
   void remove(String string){
      state=[...state.where((element) => element!=string)];
   }
}
