import 'package:favourite_app/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'add_favourite.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => FavouriteProvider(),
      child: const MaterialApp(
          debugShowCheckedModeBanner: false, home: AddFavourite()),
    );
  }
}
