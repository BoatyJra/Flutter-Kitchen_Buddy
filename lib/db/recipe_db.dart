// ignore_for_file: unnecessary_brace_in_string_interps, file_names, slash_for_doc_comments

/**********************************************************************
 *
 *  recipe_db.dart
 * 
 *  Create a recipe database for the application and execute it in the process
 * 
 *  Created by Boba Tea group, 30 Nov 2021 for CPE327 Term Project
 * 
 **********************************************************************/

import 'base_db.dart';
import '../model/recipe_model.dart';

//Main class for recipe database
class RecipeDB {
  //Future function for insert data to database
  //Return object of recipe that inserted
  Future<Recipe> insert(Recipe recipe) async {
    final db = await DB.instance.database;
    final id = await db.insert(tableRecipe, recipe.toJson());
    return recipe.copy(id: id);
  }

  //Future function for get data from database
  //Return object of recipe that matced by id
  Future<Recipe> read(int id) async {
    final db = await DB.instance.database;

    final maps = await db.query(
      tableRecipe,
      columns: RecipeField.values,
      where: '${RecipeField.id} = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return Recipe.fromJson(maps.first);
    } else {
      throw Exception("ID ${id} not found");
    }
  }

  //Future function for get data from database
  //Return list of all recipe object in database
  Future<List<Recipe>> readAll() async {
    final db = await DB.instance.database;

    final result = await db.query(tableRecipe);
    return result.map((json) => Recipe.fromJson(json)).toList();
  }

  //Future function for update data to recipe object that matched in database
  Future<int> update(Recipe recipe) async {
    final db = await DB.instance.database;

    return db.update(
      tableRecipe,
      recipe.toJson(),
      where: '${RecipeField.id} = ?',
      whereArgs: [recipe.id],
    );
  }

  Future<int> delete(int id) async {
    final db = await DB.instance.database;

    return await db.delete(
      tableRecipe,
      where: '${RecipeField.id} = ?',
      whereArgs: [id],
    );
  }
}
