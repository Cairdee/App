import 'package:flutter/material.dart';
import 'package:project6/database_helper.dart';
import 'package:project6/models/favorite_model.dart';

class FavoritePage extends StatefulWidget {
  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  final DatabaseHelper dbHelper = DatabaseHelper();
  late Future<List<FavoriteModel>> futureFavorites;

  @override
  void initState() {
    super.initState();
    futureFavorites = dbHelper.getFavorites(); // Load favorites saat inisialisasi
  }

  Future<void> _deleteFavorite(int id) async {
    await dbHelper.deleteFavorite(id);
    setState(() {
      futureFavorites = dbHelper.getFavorites(); // Memperbarui future untuk memuat ulang data
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
      ),
      body: FutureBuilder<List<FavoriteModel>>(
        future: futureFavorites,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No favorites yet.'));
          }
          final favorites = snapshot.data!;

          return ListView.builder(
            itemCount: favorites.length,
            itemBuilder: (context, index) {
              final favorite = favorites[index];
              return ListTile(
                title: Text(favorite.title),
                subtitle: Text('${favorite.date} - ${favorite.time}'),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () => _deleteFavorite(favorite.id!),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
