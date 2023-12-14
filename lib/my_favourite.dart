import 'package:favourite_app/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyFavourite extends StatelessWidget {
  const MyFavourite({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FavouriteProvider>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Favourite'),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: provider.favouriteItem.length,
            itemBuilder: (context, index) {
              return Consumer<FavouriteProvider>(
                builder: (context, value, child) {
                  return ListTile(
                      leading: Text('item$index'),
                      trailing: IconButton(
                          onPressed: () {
                            value.removeFavourite(index);
                          },
                          icon: const Icon(Icons.favorite)));
                },
              );
            }));
  }
}
