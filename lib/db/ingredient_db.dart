// ignore_for_file: file_names, slash_for_doc_comments

/**********************************************************************
 *
 *  ingredient_db.dart
 * 
 *  Create an ingredient database for the application and execute it in the process
 * 
 *  Created by Boba Tea group, 30 Nov 2021 for CPE327 Term Project
 * 
 **********************************************************************/

import '../model/ingredient_model.dart';
import 'base_db.dart';

//Main class for ingredient database
class IngredientDB {
  //Future function for insert data to database
  //Return object of ingredient that inserted
  Future<Ingredient> insert(Ingredient ingredient) async {
    final db = await DB.instance.database;

    final id = await db.insert(tableIngredient, ingredient.toJson());
    return ingredient.copy(id: id);
  }

  //Future function for get ingredient object from database by id
  //Return object of ingredient that match with id
  Future<Ingredient> read(int id) async {
    final db = await DB.instance.database;

    final maps = await db.query(
      tableIngredient,
      columns: IngredientField.values,
      where: '${IngredientField.id} = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return Ingredient.fromJson(maps.first);
    } else {
      throw Exception('ID $id not found');
    }
  }

  //Future function for get ingredient object from database by name
  //Return object of ingredient that match with name
  Future<Ingredient> readbyName(String name) async {
    final db = await DB.instance.database;

    final maps = await db.query(
      tableIngredient,
      columns: IngredientField.values,
      where: '${IngredientField.name} = ?',
      whereArgs: [name],
    );

    if (maps.isNotEmpty) {
      return Ingredient.fromJson(maps.first);
    } else {
      throw Exception('$name not found');
    }
  }

  //Future function for get ingredient object from database
  //Return list of all of ingredient object in data base
  Future<List<Ingredient>> readAll() async {
    final db = await DB.instance.database;

    final result = await db.query(tableIngredient);

    return result.map((json) => Ingredient.fromJson(json)).toList();
  }

  //Future function for update database object that user input
  Future<int> update(Ingredient ingredient) async {
    final db = await DB.instance.database;

    return db.update(
      tableIngredient,
      ingredient.toJson(),
      where: '${IngredientField.id} = ?',
      whereArgs: [ingredient.id],
    );
  }

  //Future function for delete ingredient object in database by id
  Future<int> delete(int id) async {
    final db = await DB.instance.database;

    return await db.delete(
      tableIngredient,
      where: '${IngredientField.id} = ?',
      whereArgs: [id],
    );
  }
}
