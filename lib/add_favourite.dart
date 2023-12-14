import 'package:favourite_app/my_favourite.dart';
import 'package:favourite_app/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddFavourite extends StatelessWidget {
  const AddFavourite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyFavourite()));
                },
                icon: const Icon(Icons.favorite))
          ],
          title: const Text('Favourite App'),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: 50,
            itemBuilder: (context, index) {
              return Consumer<FavouriteProvider>(
                builder: (context, value, child) {
                  return ListTile(
                      leading: Text('item$index'),
                      trailing: IconButton(
                        onPressed: () {
                          if (value.favouriteItem.contains(index)) {
                            value.removeFavourite(index);
                          } else {
                            value.addFavourite(index);
                          }
                        },
                        icon: Icon(value.favouriteItem.contains(index)
                            ? Icons.favorite
                            : Icons.favorite_border),
                      ));
                },
              );
            }));
  }
}
