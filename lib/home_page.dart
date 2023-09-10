import 'package:flutter/material.dart';

import 'models/recipe.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static List<Recipe> list = [
    Recipe('Potetos', 'assets/blyuda_retseptov.jpg', '500',
        'Potetos and Potetos '),
    Recipe(
        'Beshbarmak', 'assets/beshbarmak_3.jpg', '600', 'Potetos and Potetos '),
    Recipe('Kuurdak', 'assets/kuurdar_1.jpg', '700', 'Potetos and Potetos '),
    Recipe('Manty', 'assets/manty_21.jpg', '800', 'Potetos and Potetos '),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:Drawer(backgroundColor: Colors.grey,),
      
      appBar: AppBar(
        backgroundColor: Colors.grey,
        centerTitle: true,
        title: const Text(
          'Recipe app',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          myCard(list[0]),
          myCard(list[1]),
          myCard(list[2]),
          myCard(list[3]),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.access_time),
      ),
    );
  }

  Widget myCard(Recipe recipe) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      elevation: 48,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.all(8.0),
            color: Colors.yellow,
            child: Image.asset(recipe.imagaUrl),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              recipe.title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: Text(
              recipe.cost+'  '+'som',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
