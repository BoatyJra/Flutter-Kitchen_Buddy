// ignore_for_file: file_names, unnecessary_brace_in_string_interps, slash_for_doc_comments

/**********************************************************************
 *
 *  storage_db.dart
 * 
 *  Create a storage database for the application and execute it in the process
 * 
 *  Created by Boba Tea group, 30 Nov 2021 for CPE327 Term Project
 * 
 **********************************************************************/

import '../model/ingredient_model.dart';

import 'base_db.dart';
import '../model/storage_model.dart';

//Main class for storage database
class StorageDB {
  //Future function for insert data to database
  //Return storage object that inserted
  Future<Storage> insert(Storage storage) async {
    final db = await DB.instance.database;
    final id = await db.insert(tableStorage, storage.toJson());
    return storage.copy(id: id);
  }

  //Future function for get data from database
  //Return storage object that match by ingredient name
  Future<Storage> readbyIngredientName(int id) async {
    final db = await DB.instance.database;
    final maps = await db.query(
      tableStorage,
      columns: StorageField.values,
      where: '${StorageField.ingredientID} = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return Storage.fromJson(maps.first);
    } else {
      throw Exception('$id not found');
    }
  }

  //Future function for get data from database
  //Return storage object that match by id
  Future<Storage> read(int id) async {
    final db = await DB.instance.database;

    final maps = await db.rawQuery('''
      SELECT ${tableStorage}.${StorageField.id} as ${StorageField.id},
      ${tableStorage}.${StorageField.ingredientID} as ${StorageField.ingredientID},
      ${tableStorage}.${StorageField.expirationDate} as ${StorageField.expirationDate},
      ${tableStorage}.${StorageField.amount} as ${StorageField.amount},
      ${tableStorage}.${StorageField.createTime} as ${StorageField.createTime},
      ${tableIngredient}.${IngredientField.imageUrl} as ${IngredientField.imageUrl},
      ${tableIngredient}.${IngredientField.name} as ${IngredientField.name},
      ${tableIngredient}.${IngredientField.description} as ${IngredientField.description},
      ${tableIngredient}.${IngredientField.type} as ${IngredientField.type},
      ${tableIngredient}.${IngredientField.unit} as ${IngredientField.unit}
      FROM ${tableStorage} LEFT JOIN ${tableIngredient} ON ${tableStorage}.${StorageField.ingredientID} = ${tableIngredient}.${IngredientField.id} 
      WHERE ${StorageField.id} = ${id}
    ''');

    if (maps.isNotEmpty) {
      return Storage.fromJson(maps.first);
    } else {
      throw Exception("ID ${id} not found");
    }
  }

  //Future function for get data from database
  //Return list of all storage object in database
  Future<List<Storage>> readAll() async {
    final db = await DB.instance.database;

    final result = await db.rawQuery('''
    SELECT ${tableStorage}.${StorageField.id} as ${StorageField.id},
      ${tableStorage}.${StorageField.ingredientID} as ${StorageField.ingredientID},
      ${tableStorage}.${StorageField.expirationDate} as ${StorageField.expirationDate},
      ${tableStorage}.${StorageField.amount} as ${StorageField.amount},
      ${tableStorage}.${StorageField.createTime} as ${StorageField.createTime},
      ${tableIngredient}.${IngredientField.imageUrl} as ${IngredientField.imageUrl},
      ${tableIngredient}.${IngredientField.name} as ${IngredientField.name},
      ${tableIngredient}.${IngredientField.description} as ${IngredientField.description},
      ${tableIngredient}.${IngredientField.type} as ${IngredientField.type},
      ${tableIngredient}.${IngredientField.unit} as ${IngredientField.unit}
      FROM ${tableStorage} LEFT JOIN ${tableIngredient} ON ${tableStorage}.${StorageField.ingredientID} = ${tableIngredient}.${IngredientField.id} 
    ''');

    return result.map((json) => Storage.fromJson(json)).toList();
  }

  //Future function for update data to storage object that matched in database
  Future<int> update(Storage storage) async {
    final db = await DB.instance.database;

    return db.update(
      tableStorage,
      storage.toJson(),
      where: '${StorageField.id} = ?',
      whereArgs: [storage.id],
    );
  }

  //Future function for delete data to storage object that matched by id
  Future<int> delete(int id) async {
    final db = await DB.instance.database;

    return await db.delete(
      tableStorage,
      where: '${StorageField.id} = ?',
      whereArgs: [id],
    );
  }
}
