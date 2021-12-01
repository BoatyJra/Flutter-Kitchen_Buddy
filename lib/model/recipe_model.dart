// ignore_for_file: prefer_const_declarations, non_constant_identifier_names, slash_for_doc_comments

/**********************************************************************
 *
 *  recipe_model.dart
 * 
 *  initilize the variable of the recipe table
 *  handle the data from the database which is json file
 *  and recreate it into dart format
 *  
 *  Created by Boba Tea group, 30 Nov 2021 for CPE327 Term Project
 * 
 **********************************************************************/

// Initialize the recipe table
final String tableRecipe = 'Recipe';

// Define the variable of the recipe table
// values - the list containing details of the recipes
// id - ID of the recipes, starting from 1
// name - name of the recipes
// detail - detailed description of the recipes
//          containing the amount of ingredients and how to cook the recipe
// image_url - image from the network of the recipes
// link - youtube video ID to use it inside the app
class RecipeField {
  static final List<String> values = [
    id,
    name,
    detail,
    imageUrl,
    link,
  ];

  static final String id = 'recipeId';
  static final String name = 'name';
  static final String detail = 'detail';
  static final String imageUrl = 'image_url';
  static final String link = 'link';
}

// Convert the data between dart format and json format
class Recipe {
  final int? id;
  final String name;
  final String detail;
  final String image_url;
  final String link;

  const Recipe(
      {this.id,
      required this.name,
      required this.detail,
      required this.image_url,
      required this.link});

  // Map the variable list into Json
  Map<String, Object?> toJson() => {
        RecipeField.id: id,
        RecipeField.name: name,
        RecipeField.detail: detail,
        RecipeField.imageUrl: image_url,
        RecipeField.link: link,
      };

  // Handle the data that ready to be used in the database
  Recipe copy({
    int? id,
    String? name,
    String? detail,
    String? image_url,
    String? link,
  }) =>
      Recipe(
          id: id ?? this.id,
          name: name ?? this.name,
          detail: detail ?? this.detail,
          image_url: image_url ?? this.image_url,
          link: link ?? this.link);

  // Recreate object recipes from Json format to dart format
  static Recipe fromJson(Map<String, Object?> json) => Recipe(
      id: json[RecipeField.id] as int?,
      name: json[RecipeField.name] as String,
      detail: json[RecipeField.detail] as String,
      image_url: json[RecipeField.imageUrl] as String,
      link: json[RecipeField.link] as String);
}
