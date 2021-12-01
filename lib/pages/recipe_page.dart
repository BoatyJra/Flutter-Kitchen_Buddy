// ignore_for_file: prefer_const_constructors, slash_for_doc_comments

/**********************************************************************
 *
 *  recipe_page.dart
 * 
 *  UI page showing the recipe for the user to choose from
 * 
 *  Created by Boba Tea group, 30 Nov 2021 for CPE327 Term Project
 * 
 **********************************************************************/

import 'dart:ui';
import 'package:bobatea/db/recipe_db.dart';
import 'package:bobatea/model/recipe_model.dart';
import 'package:bobatea/pages/menudetail_page.dart';
import 'package:flutter/material.dart';

// Read the recipe data from the database
// Return the all recipe that inside our provider list
Future<List<Recipe>> readRecipe() async {
  final db = RecipeDB();
  final resault = await db.readAll();
  return resault;
}

// ignore: use_key_in_widget_constructors

// Stateful widget used to create the UI
class RecipePage extends StatefulWidget {
  @override
  _RecipePageState createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {
  @override
  void initState() {
    super.initState();
  }

  // UI builder showing the recipe page in the app
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: FutureBuilder(
            future: readRecipe(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              // Snapshot used to hold the app when loading the data to prevent malfunction
              if (snapshot.data == null) {
                return Center(
                  child: Text("Loading..."),
                );
                // After finished loading, the builder was loaded and show the recipes
              } else {
                return Column(
                  children: [
                    // Container for the outer border of the shape
                    Container(
                      height: 380,
                      decoration: BoxDecoration(
                          color: Colors.orange[200],
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(40),
                              bottomRight: Radius.circular(40))),
                      alignment: Alignment.topCenter,
                      // Container for the inner border of the shape
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(40),
                                bottomRight: Radius.circular(40))),
                        height: 370,
                        width: 400,
                        alignment: Alignment.topCenter,
                        child: Column(
                          children: [
                            // Show the title of the page for recognize
                            Container(
                                margin: const EdgeInsets.all(10.0),
                                child: ListTile(
                                  title: Text("Food Recipe",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 40,
                                          color: Colors.orange,
                                          fontWeight: FontWeight.bold)),
                                  subtitle: Text(
                                      "Choose yours and make one to fulfill your hunger !",
                                      textAlign: TextAlign.center),
                                )),
                            // Build the horizontal scrollable card for the recipe list using ListView
                            Container(
                              margin: const EdgeInsets.all(8.0),
                              height: 256,
                              child: ListView.separated(
                                padding: EdgeInsets.all(16),
                                scrollDirection: Axis.horizontal,
                                itemCount: 5,
                                separatorBuilder: (context, _) =>
                                    SizedBox(width: 12),
                                itemBuilder: (BuildContext context, int index) {
                                  List list = List.generate(
                                      snapshot.data.length, (i) => i);
                                  list.shuffle(); // Randomize the list (5 In this case)
                                  return buildCard(
                                      item: snapshot.data[list[
                                          index]]); //Called the widget to generate the card
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Provide ListView under the card to show all available recipe
                    Expanded(
                      child: SizedBox(height: 200, child: listView(snapshot)),
                    ),
                  ],
                );
              }
            }));
  }

  // ListView for the bottom ListView, containing recipe images and names
  // Then call the recipe detail when tapped on the recipes
  Widget listView(AsyncSnapshot<dynamic> snapshot) => ListView.builder(
      padding: const EdgeInsets.only(bottom: 64),
      itemCount: snapshot.data.length,
      itemBuilder: (context, int index) {
        return ListTile(
            title: Text(snapshot.data[index].name),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(snapshot.data[index].image_url),
            ),
            // Call the recipe detail when the card was tapped
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MenuDetailPage(
                    item: snapshot.data[index],
                  ),
                )));
      });

  // Build the card for the horizontal ListView on the top, Containing
  // recipe images and names
  // Then call the recipe detail when tapped on the recipes
  Widget buildCard({
    required Recipe item,
  }) {
    String name = item.name;
    // Card builder for the ListView
    return SizedBox(
      width: 200,
      child: Column(
        children: [
          Expanded(
            child: AspectRatio(
              aspectRatio: 4 / 3,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Material(
                  child: Ink.image(
                    image: NetworkImage(item.image_url),
                    fit: BoxFit.cover,
                    child: InkWell(
                        // Call the recipe detail when the card was tapped
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MenuDetailPage(
                                item: item,
                              ),
                            ))),
                  ),
                ),
              ),
            ),
          ),
          // Show the recipe names below the card
          const SizedBox(height: 4),
          Text(name, style: TextStyle(fontSize: 24)),
        ],
      ),
    );
  }
}
