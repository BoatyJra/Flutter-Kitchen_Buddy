// ignore_for_file: file_names, unnecessary_brace_in_string_interps, slash_for_doc_comments

/**********************************************************************
 *
 *  usageIngredient_db.dart
 * 
 *  Create an UsageIngredients database for the application and execute it in the process
 * 
 *  Created by Boba Tea group, 30 Nov 2021 for CPE327 Term Project
 * 
 **********************************************************************/

import '../model/ingredient_model.dart';

import 'base_db.dart';
import '../model/usageIngredient_model.dart';

//Main class for usage ingredient database
class UsageIngredientDB {
  //Future function for insert data to database
  //Return usageIngredient object that inserted
  Future<UsageIngredient> insert(UsageIngredient usageIngredient) async {
    final db = await DB.instance.database;
    final id = await db.insert(tableUsageIngredient, usageIngredient.toJson());
    return usageIngredient.copy(id: id);
  }

  //Future function for get data from database
  //Return usageIngredient object that match by recipe id
  Future<List<UsageIngredient>> read(int id) async {
    final db = await DB.instance.database;

    final result = await db.rawQuery('''
      SELECT 
      ${tableUsageIngredient}.${UsageIngredientField.id} as ${UsageIngredientField.id},
      ${tableIngredient}.${IngredientField.name} as ${IngredientField.name},
      ${tableIngredient}.${IngredientField.description} as ${IngredientField.description},
      ${tableIngredient}.${IngredientField.imageUrl} as ${IngredientField.imageUrl},
      ${tableIngredient}.${IngredientField.type} as ${IngredientField.type},
      ${tableIngredient}.${IngredientField.unit} as ${IngredientField.unit},
      ${tableUsageIngredient}.${UsageIngredientField.amount} as ${UsageIngredientField.amount},
      ${tableUsageIngredient}.${UsageIngredientField.ingredientId} as ${UsageIngredientField.ingredientId}
      FROM ${tableUsageIngredient} LEFT JOIN ${tableIngredient} ON ${tableUsageIngredient}.${UsageIngredientField.ingredientId} = ${tableIngredient}.${IngredientField.id} 
      WHERE ${UsageIngredientField.recipeId} = ${id}
    ''');

    return result.map((json) => UsageIngredient.fromJson(json)).toList();
  }

  //Future function for get data from database
  //Return list of all usageIngredient object in database
  Future<List<UsageIngredient>> readAll() async {
    final db = await DB.instance.database;

    final result = await db.rawQuery('''
      SELECT 
      ${tableUsageIngredient}.${UsageIngredientField.id} as ${UsageIngredientField.id},
      ${tableIngredient}.${IngredientField.name} as ${IngredientField.name},
      ${tableIngredient}.${IngredientField.description} as ${IngredientField.description},
      ${tableIngredient}.${IngredientField.imageUrl} as ${IngredientField.imageUrl},
      ${tableIngredient}.${IngredientField.type} as ${IngredientField.type},
      ${tableIngredient}.${IngredientField.unit} as ${IngredientField.unit},
      ${tableUsageIngredient}.${UsageIngredientField.amount} as ${UsageIngredientField.amount}
      FROM ${tableUsageIngredient} LEFT JOIN ${tableIngredient} ON ${tableUsageIngredient}.${UsageIngredientField.ingredientId} = ${tableIngredient}.${IngredientField.id} 
    ''');

    return result.map((json) => UsageIngredient.fromJson(json)).toList();
  }

  //Future function for update data to database
  Future<int> update(UsageIngredient usageIngredient) async {
    final db = await DB.instance.database;

    return db.update(
      tableUsageIngredient,
      usageIngredient.toJson(),
      where: '${UsageIngredientField.id} = ?',
      whereArgs: [usageIngredient.id],
    );
  }

  //Future function for delete data object in database that matched by id
  Future<int> delete(int id) async {
    final db = await DB.instance.database;

    return await db.delete(
      tableUsageIngredient,
      where: '${UsageIngredientField.id} = ?',
      whereArgs: [id],
    );
  }
}
