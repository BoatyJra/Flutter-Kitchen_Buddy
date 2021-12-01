// ignore: slash_for_doc_comments
/**********************************************************************
 *
 *  main.dart
 * 
 *  This file contain the app bar and navigation bar to navigate to
 *  other pages
 * 
 *  Created by Boba Tea group, 30 Nov 2021 for CPE327 Term Project
 * 
 **********************************************************************/

// ignore_for_file: use_key_in_widget_constructors, avoid_function_literals_in_foreach_calls

import 'package:bobatea/Provider/ingredient_list.dart';
import 'package:bobatea/db/ingredient_db.dart';
import 'package:bobatea/db/recipe_db.dart';
import 'package:bobatea/db/storage_db.dart';
import 'package:bobatea/db/usageIngredient_db.dart';
import 'package:bobatea/model/ingredient_model.dart';
import 'package:bobatea/model/recipe_model.dart';

import 'package:bobatea/model/usageIngredient_model.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'pages/recipe_page.dart';
import 'pages/add_page.dart';
import 'pages/notification_page.dart';
import 'package:bobatea/Provider/recipe_list.dart';
import 'package:bobatea/db/notification_api.dart';
import 'package:bobatea/Provider/usageIngredient_list.dart';

// Run the application in this library
void main() {
  runApp(MyApp());
}

// Define the homepage and the theme color for the whole app
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: MyHomePage(),
      theme: ThemeData(
          primarySwatch: Colors.orange), // Using orange color for the theme
    );
  }
}

// Define stateful widget to handle the changes in navigation bar
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

// Initialize the state for our app
class _MyHomePageState extends State<MyHomePage> {
  // intial state for notification api and call the push notification
  @override
  void initState() {
    super.initState();
    NotificationApi.init();
  }

  // Setup notification schedule from the database based on the
  // available storage
  Future insertNoti() async {
    final db = StorageDB();
    final storages = await db.readAll();
    await NotificationApi.setUpSchedule(storages);
  }

  // Initialize the data of the recipe, usage ingredients and ingredients
  void initData() async {
    List<Recipe> recipes = [];
    List<UsageIngredient> usages = [];
    List<Ingredient> ingredients = [];

    // Wait for the list of data before proceed to next functions
    await resetRecipe(recipes);
    await resetIngredient(ingredients);
    await resetUsage(usages);
    await deleteStorage();
  }

  // Delete all the recipe data and insert it again by the dataset
  // from the provider folder to easily insert it all at once when updated
  Future resetRecipe(List<Recipe> recipes) async {
    final db = RecipeDB();
    final resault = await db.readAll();
    resault.forEach((resault) async {
      final id = resault.id;
      await db.delete(id!);
    });
    recipes = getRecipe();
    recipes.forEach((recipe) async {
      await db.insert(recipe);
    });
  }

  // Delete all the recipe data and insert it again by the dataset
  // from the provider folder to easily insert it all at once when updated
  Future resetUsage(List<UsageIngredient> usages) async {
    usages = getUsageIngredient();
    final db = UsageIngredientDB();
    final result = await db.readAll();
    result.forEach((result) async {
      final id = result.id;
      await db.delete(id!);
    });
    usages.forEach((usage) async {
      await db.insert(usage);
    });
  }

  // Delete all the ingredients data and insert it again by the dataset
  // from the provider folder to easily insert it all at once when updated
  Future resetIngredient(List<Ingredient> ingredients) async {
    final idb = IngredientDB();
    final result = await idb.readAll();
    result.forEach((resault) async {
      final id = resault.id;
      await idb.delete(id!);
    });
    ingredients = getIngredient();
    ingredients.forEach((ingredient) async {
      await idb.insert(ingredient);
    });
  }

  // Delete the all data inside storage database
  Future deleteStorage() async {
    final sdb = StorageDB();
    final result = await sdb.readAll();
    result.forEach((element) async {
      final id = element.id;
      await sdb.delete(id!);
    });
  }

  // Navigation bar pages containing the widget for other pages and starting page
  // index - specify the starting page for the app when it opens
  // 0, 1, 2 for the pages respectively
  int index = 1;
  final screens = [
    AddPage(),
    RecipePage(),
    NotificationPage(),
  ];

  // Main widget for the app, and Indicate the icon for each pages
  // Return containing appbar, navigation bar structure to using in the whole app
  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      const Icon(Icons.ad_units_outlined, size: 30),
      const Icon(Icons.book_rounded, size: 30),
      const Icon(Icons.notifications, size: 30),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kitchen Buddy"),
        actions: <Widget>[
          // Widget used to refresh the database of the app
          // Warning: it clear all data and you need to insert the storage again
          IconButton(
            icon: const Icon(Icons.refresh),
            tooltip: 'Resetting Database',
            onPressed:
                initData, //the function clear all data inside the database
          )
        ],
      ),
      resizeToAvoidBottomInset: false,
      extendBody: true,
      body: screens[index],
      // Navigation bar builder for the app
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        child: FutureBuilder(
            future: insertNoti(),
            builder: (context, AsyncSnapshot item) {
              return CurvedNavigationBar(
                backgroundColor: Colors.transparent,
                color: Colors.grey.shade50,
                buttonBackgroundColor: Colors.orange,
                height: 60,
                animationDuration: const Duration(milliseconds: 400),
                index: index,
                items: items,
                onTap: (index) => setState(() => this.index = index),
              );
            }),
      ),
    );
  }
}
