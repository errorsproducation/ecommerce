import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:keyboard/DataProvider/ProductData.dart';

class AllCartListtpage extends ConsumerWidget {
  const AllCartListtpage({super.key});

  @override
  Widget build(BuildContext context,ref) {
    final data=ref.watch(cartprovider);
    print(data.length);
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Text("${data[index]}",
                style: TextStyle(
                  color: Colors.lightGreen,
                ),
            );
          },
        ),
      ),
    );
  }
}

