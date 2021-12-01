// ignore_for_file: prefer_const_declarations, non_constant_identifier_names, slash_for_doc_comments

/**********************************************************************
 *
 *  ingredient_model.dart
 * 
 *  initilize the variable of the ingredients table
 *  handle the data from the database which is json file
 *  and recreate it into dart format
 *  
 *  Created by Boba Tea group, 30 Nov 2021 for CPE327 Term Project
 * 
 **********************************************************************/

// Initialize the ingredient table
const String tableIngredient = 'Ingredient';

// Define the variable of the ingredient table
// values - the list containing details of the ingredients
// id - ID of the ingredients, starting from 1
// name - name of the ingredients
// description - details of the ingredients
// image_url - image from the network of the ingredients
// type - specify the type of the ingredients
// unit - unit of the ingredients in g., ml. and piece
class IngredientField {
  static final List<String> values = [
    id,
    name,
    description,
    imageUrl,
    type,
    unit
  ];

  static final String id = 'ingredientId';
  static final String name = 'name';
  static final String description = 'description';
  static final String imageUrl = 'image_url';
  static final String type = 'type';
  static final String unit = 'unit';
}

// Convert the data between dart format and json format
class Ingredient {
  final int? id;
  final String name;
  final String description;
  final String image_url;
  final String type;
  final String unit;

  const Ingredient(
      {this.id,
      required this.name,
      required this.description,
      required this.image_url,
      required this.type,
      required this.unit});

  // Map the variable list into Json
  Map<String, Object?> toJson() => {
        IngredientField.id: id,
        IngredientField.name: name,
        IngredientField.description: description,
        IngredientField.imageUrl: image_url,
        IngredientField.type: type,
        IngredientField.unit: unit
      };

  // Handle the data that ready to be used in the database
  Ingredient copy({
    int? id,
    String? name,
    String? description,
    String? image_url,
    String? type,
    String? unit,
  }) =>
      Ingredient(
          id: id ?? this.id,
          name: name ?? this.name,
          description: description ?? this.description,
          image_url: image_url ?? this.image_url,
          type: type ?? this.type,
          unit: unit ?? this.unit);

  // Recreate object ingredients from Json format to dart format
  static Ingredient fromJson(Map<String, Object?> json) => Ingredient(
      id: json[IngredientField.id] as int?,
      name: json[IngredientField.name] as String,
      description: json[IngredientField.description] as String,
      image_url: json[IngredientField.imageUrl] as String,
      type: json[IngredientField.type] as String,
      unit: json[IngredientField.unit] as String);
}
