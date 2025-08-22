import 'package:flutter/material.dart';
import 'package:project6/database_helper.dart';
import 'package:project6/models/favorite_model.dart';

class FavoritePage extends StatefulWidget {
  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  late Future<List<FavoriteModel>> favoritesFuture;

  @override
  void initState() {
    super.initState();
    // Initialize the future to fetch favorites
    favoritesFuture = fetchFavorites();
  }

  // Method to fetch favorites
  Future<List<FavoriteModel>> fetchFavorites() async {
    return await DatabaseHelper().getFavorites();
  }

  // Method to refresh the favorites list
  void refreshFavorites() {
    setState(() {
      favoritesFuture = fetchFavorites(); // Re-fetch the data
    });
  }

  // Show confirmation dialog
  void _showDeleteConfirmationDialog(FavoriteModel favorite) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Hapus Favorit'),
          content: Text('Apakah Anda yakin ingin menghapus item ini dari favorit?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('No'),
            ),
            TextButton(
              onPressed: () async {
                // Delete the favorite item from the database
                await DatabaseHelper().deleteFavorite(favorite.id!);
                // Close the dialog
                Navigator.of(context).pop();
                // Refresh the state after deleting
                refreshFavorites();
              },
              child: Text('Yes'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Favorites',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xFF101828),
        automaticallyImplyLeading: false,
      ),
      body: FutureBuilder<List<FavoriteModel>>(
        future: favoritesFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.data!.isEmpty) {
            return Center(child: Text('No Favorites Yet!'));
          }

          final favorites = snapshot.data!;

          return ListView.builder(
            itemCount: favorites.length,
            itemBuilder: (context, index) {
              final favorite = favorites[index];
              return Card(
                elevation: 4,
                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: ListTile(
                  title: Text(favorite.title),
                  subtitle: Text('Date: ${favorite.date} | Time: ${favorite.time}'),
                  trailing: IconButton(
                    icon: Icon(Icons.delete, color: Colors.red),
                    onPressed: () {
                      // Show the confirmation dialog before deleting
                      _showDeleteConfirmationDialog(favorite);
                    },
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
