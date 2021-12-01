// ignore_for_file: prefer_const_declarations, unnecessary_brace_in_string_interps, unused_local_variable, unused_element, avoid_print, slash_for_doc_comments

/**********************************************************************
 *
 *  base_db.dart
 * 
 *  Create and initialize a main database for the application and execute it in the process
 * 
 *  Created by Boba Tea group, 30 Nov 2021 for CPE327 Term Project
 * 
 **********************************************************************/

import '../model/ingredient_model.dart';
import '../model/recipe_model.dart';
import '../model/storage_model.dart';
import '../model/usageIngredient_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

//Main class for database
class DB {
  static final DB instance = DB._init();
  static Database? _database;

  DB._init();

  // Get database
  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('kitchen.db');
    return _database!;
  }

  //Initialize database
  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  //Create database
  Future _createDB(Database db, int version) async {
    final idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    final textType = 'TEXT';
    final boolType = 'BOOLEAN';
    final integerType = 'INTEGER';
    final doubleType = 'DOUBLE(9,2)';

    //Execute ingredient database
    await db.execute('''
      CREATE TABLE $tableIngredient(
        ${IngredientField.id} $idType,
        ${IngredientField.name} $textType,
        ${IngredientField.description} $textType,
        ${IngredientField.imageUrl} $textType,
        ${IngredientField.type} $textType,
        ${IngredientField.unit} $textType
      )
    ''');
    //Execute storage database
    await db.execute('''
      CREATE TABLE $tableStorage(
        ${StorageField.id} $idType,
        ${StorageField.ingredientID}, $integerType,
        ${StorageField.expirationDate} $textType,
        ${StorageField.amount} $doubleType,
        ${StorageField.createTime} $textType,
        FOREIGN KEY (${StorageField.ingredientID}) REFERENCES ${tableIngredient}(${IngredientField.id})
      )
    ''');
    //Execute recipe database
    await db.execute('''
      CREATE TABLE $tableRecipe(
        ${RecipeField.id} $idType,
        ${RecipeField.name} $textType,
        ${RecipeField.detail} $textType,
        ${RecipeField.imageUrl} $textType,
        ${RecipeField.link} $textType
      )
    ''');
    //Execute usageIngredient database
    final result = await db.execute('''
      CREATE TABLE $tableUsageIngredient(
        ${UsageIngredientField.id} $idType,
        ${UsageIngredientField.recipeId} $integerType,
        ${UsageIngredientField.ingredientId} $integerType,
        ${UsageIngredientField.amount} $doubleType,
        FOREIGN KEY (${UsageIngredientField.recipeId}) REFERENCES ${tableRecipe}(${RecipeField.id}),
        FOREIGN KEY (${UsageIngredientField.ingredientId}) REFERENCES ${tableIngredient}(${IngredientField.id})
      )
    ''');
  }

  //for update version of database
  Future _onUpdate(Database db, int oldVersion, int newVersion) async {
    print("upgrading");

    if (oldVersion < newVersion) {
      db.execute('''
        ALTER TABLE $tableIngredient ADD COLUMN ${IngredientField.imageUrl} TEXT
        ''');
    }
  }

  //future function for close database
  Future close() async {
    final db = await instance.database;

    db.close();
  }
}
