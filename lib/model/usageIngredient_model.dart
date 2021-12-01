// ignore_for_file: file_names, prefer_const_declarations, non_constant_identifier_names, slash_for_doc_comments

/**********************************************************************
 *
 *  usageIngredient_model.dart
 * 
 *  initilize the variable of the UsageIngredients table
 *  handle the data from the database which is json file
 *  and recreate it into dart format
 *  
 *  Created by Boba Tea group, 30 Nov 2021 for CPE327 Term Project
 * 
 **********************************************************************/

import 'ingredient_model.dart';

// Initialize the UsageIngredient table
final String tableUsageIngredient = 'UsageIngredients';

// Define the variable of the UsageIngredient table
// id - ID of the usage ingredients, starting from 1
// recipeId - ID of the recipe, starting from 1
// ingredientId - ID of the ingredients, starting from 1
// amount - usage amount of the recipes
class UsageIngredientField {
  static final List<String> values = [id, recipeId, ingredientId, amount];

  static final String id = 'usage_ingredient_id';
  static final String recipeId = 'recipe_id';
  static final String ingredientId = 'ingredient_id';
  static final String amount = 'amount';
}

// Convert the data between dart format and json format
class UsageIngredient {
  final int? id;
  final int? recipeId;
  final int? ingredientId;
  final double? amount;
  final String? name;
  final String? description;
  final String? image_url;
  final String? type;
  final String? unit;

  const UsageIngredient(
      {this.id,
      this.recipeId,
      this.ingredientId,
      this.amount,
      this.name,
      this.description,
      this.image_url,
      this.type,
      this.unit});

  // Map the variable list into Json
  Map<String, Object?> toJson() => {
        UsageIngredientField.id: id,
        UsageIngredientField.recipeId: recipeId,
        UsageIngredientField.ingredientId: ingredientId,
        UsageIngredientField.amount: amount,
      };

  // Handle the data that ready to be used in the database
  UsageIngredient copy(
          {int? id, int? recipeId, int? ingredientId, double? amount}) =>
      UsageIngredient(
          id: id ?? this.id,
          recipeId: recipeId ?? this.recipeId,
          ingredientId: ingredientId ?? this.ingredientId,
          amount: amount ?? this.amount);

  // Recreate object UsageIngredients from Json format to dart format
  static UsageIngredient fromJson(Map<String, Object?> json) => UsageIngredient(
      id: json[UsageIngredientField.id] as int?,
      name: json[IngredientField.name] as String?,
      description: json[IngredientField.description] as String?,
      image_url: json[IngredientField.imageUrl] as String?,
      type: json[IngredientField.type] as String?,
      unit: json[IngredientField.unit] as String?,
      amount: json[UsageIngredientField.amount] as double?);
}
