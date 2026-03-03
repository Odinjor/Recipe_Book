
import 'package:flutter/material.dart';
import '../screens/details_screen.dart';
import '../data/recipes_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Recipies')),
      body: ListView.builder(
  itemCount: sampleRecipes.length,
  itemBuilder: (context, index) {
    final recipe = sampleRecipes[index];
    return InkWell(
      borderRadius: BorderRadius.circular(16),
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => DetailsScreen(recipe: recipe),
      ),
    );
  },
      child: Card(
  elevation: 6,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(16),
  ),
  margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

      // HERO IMAGE SECTION
      ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(16),
        ),
        child: Stack(
          children: [

            // Main Recipe Image
            Image.asset(
              recipe.imagePath,
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
            ),

            // Dark Gradient Overlay
            Container(
              height: 180,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black.withOpacity(0.7),
                    Colors.transparent,
                  ],
                ),
              ),
            ),

            // Country + Flag Positioned
            Positioned(
              bottom: 12,
              left: 12,
              child: Row(
                children: [
                  Image.asset(
                    recipe.flagPath,
                    width: 28,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    recipe.country,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      // TITLE SECTION
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          recipe.name,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ],
  ),
),
    );
  },
)
    ); 
  }
}

