
class Recipe {
  
  final String name;
  final String imagePath;
  final String country;
  final String flagPath;
  final List<String> ingredients;
  final String instructions;

  Recipe({
    required this.name,
    required this.country,
    required this.flagPath,
    required this.imagePath,
    required this.ingredients,
    required this.instructions,
  });


}