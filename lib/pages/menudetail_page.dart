// ignore_for_file: slash_for_doc_comments

/**********************************************************************
 *
 *  menudetail_page.dart
 * 
 *  UI page showing the detail of the specific recipe with ingredients
 *  , amount used, how-to video, and detailed instruction
 * 
 *  Created by Boba Tea group, 30 Nov 2021 for CPE327 Term Project
 * 
 **********************************************************************/

import 'dart:ui';
import 'package:bobatea/db/ingredient_db.dart';
import 'package:bobatea/db/storage_db.dart';
import 'package:bobatea/db/usageIngredient_db.dart';
import 'package:bobatea/model/ingredient_model.dart';
import 'package:bobatea/model/recipe_model.dart';
import 'package:bobatea/model/storage_model.dart';
import 'package:bobatea/model/usageIngredient_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// Stateful widget used to create the UI
class MenuDetailPage extends StatefulWidget {
  final Recipe item;

  const MenuDetailPage({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  _MenuDetailPageState createState() => _MenuDetailPageState(item);
}

class _MenuDetailPageState extends State<MenuDetailPage> {
  Recipe item;
  _MenuDetailPageState(this.item);

  late YoutubePlayerController _controller;

// Read the usage ingredients data from the database
// Return the all the usage recipe that inside our provider list
  Future<List<UsageIngredient>> readUsage() async {
    final db = UsageIngredientDB();
    final resault = await db.read(item.id!);
    return resault;
  }

  // function for customize the youtube player
  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: item.link,
      flags: const YoutubePlayerFlags(
        mute: false,
        autoPlay: false,
      ),
    );
    super.initState();
  }

  // UI builder showing the recipe page in the app
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text("Menu"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Container for the outer border of the shape
            Container(
              height: 380,
              decoration: BoxDecoration(
                  color: Colors.orange[200],
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40))),
              alignment: Alignment.topCenter,
              // Container for the inner border of the shape
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40))),
                height: 370,
                width: 400,
                alignment: Alignment.topCenter,
                child: Stack(
                  children: [
                    // Container for inserting the image behind the scrollable card
                    Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(item.image_url),
                              fit: BoxFit.cover),
                        ),
                        child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
                            child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.5),
                                  borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(40),
                                      bottomRight: Radius.circular(40)),
                                ),
                                alignment: Alignment.topCenter,
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        // Item name on the top center of the page
                                        child: Container(
                                          margin:
                                              const EdgeInsets.only(top: 20),
                                          child: Text(item.name,
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                  fontSize: 36,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      ),
                                      // Ingredients word on the top left
                                      const Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 20, top: 10),
                                          child: Text(
                                            "Ingredients",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontSize: 22,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                      // Create the horizontal scrollable card to show
                                      // the required ingredient and amount
                                      Container(
                                        margin: const EdgeInsets.all(8.0),
                                        height: 256,
                                        child: FutureBuilder(
                                            future: readUsage(),
                                            builder: (BuildContext context,
                                                AsyncSnapshot usage) {
                                              if (usage.data == null) {
                                                return const Center(
                                                  child: Text("Loading"),
                                                );
                                              } else {
                                                return ListView.separated(
                                                  padding:
                                                      const EdgeInsets.all(16),
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  itemCount: usage.data.length,
                                                  separatorBuilder: (context,
                                                          _) =>
                                                      const SizedBox(width: 12),
                                                  itemBuilder:
                                                      (context, index) {
                                                    return buildCard(
                                                        item: usage.data[
                                                            index]); //build the usage ingredients card
                                                  },
                                                );
                                              }
                                            }),
                                      ),
                                    ],
                                  ),
                                )))),
                  ],
                ),
              ),
            ),
            // Container containing the button that will show the
            // video popup on the bottom
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: buildButton(
                text: 'Click Here To Play Video',
                onClicked: () => showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (context) => YoutubePlayer(
                    controller: _controller,
                    showVideoProgressIndicator: true,
                    onReady: () {
                      // ignore: avoid_print
                      print('Player is ready.');
                    },
                  ),
                ),
              ),
            ),
            // Details word on the left
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: const Text(
                "Details",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.orange,
                    fontWeight: FontWeight.bold),
              ),
            ),
            // Showing the detailed instruction inside a box
            Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Colors.orange.shade200.withOpacity(0.2),
                  borderRadius: const BorderRadius.all(Radius.circular(16))),
              child: Text(item.detail, style: const TextStyle()),
            )
          ],
        ),
      ));

  // Widget for building the button that used call the show video modal
  Widget buildButton({
    required String text,
    required VoidCallback onClicked,
  }) =>
      ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25)),
        child: Text(
          text,
          style: const TextStyle(fontSize: 18),
        ),
        onPressed: onClicked,
      );
}

// Build the card for the horizontal ListView on the top, Containing
// ingredient image, name, required amount and left amount in the storage
Widget buildCard({
  required UsageIngredient item,
}) {
  // Read the ingredient data from the database
  // Return the ingredient name that inside our provider list
  Future<Ingredient> readByName(String name) async {
    final db = IngredientDB();
    final result = await db.readbyName(name);
    return result;
  }

  // Read the storage data by name from the database
  // Return the the storage data that the user added
  Future<Storage?> readStoragebyName(String name) async {
    final ingredient = await readByName(name);
    final db = StorageDB();
    final result = await db.readbyIngredientName(ingredient.id!);
    return result;
  }

  // Main container for building the card
  return Container(
    margin: const EdgeInsets.only(top: 10),
    decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: const BorderRadius.all(Radius.circular(20))),
    height: 200,
    width: 350,
    child: FutureBuilder(
        future: readStoragebyName(item.name!),
        builder: (BuildContext context, AsyncSnapshot storage) {
          double amount = 0;

          //Load the data before entering the page

          // ignore: unrelated_type_equality_checks
          if (storage.connectionState == 1) {
            return const Center(
              child: Text('Loading...'),
            );
            // After loaded, if the amount of ingredients in the storage is not added
            // set it to 0
          } else {
            if (storage.data == null) {
              amount = 0;
              // else, set it to meet the storage
            } else {
              amount = storage.data.amount;
              // after that, return the data the contain the information stated above
            }
            return Row(
              children: [
                // Image container
                Container(
                  margin: const EdgeInsets.only(left: 40),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Image.network(
                      item.image_url ?? "",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                // Ingredients name, amount and available amount container
                Container(
                  margin: const EdgeInsets.only(top: 80, left: 20, right: 20),
                  child: Column(
                    children: [
                      Text(
                        item.name ?? "",
                        style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange),
                      ),
                      Text(
                          "amount: " +
                              amount.toString() +
                              "/" +
                              item.amount.toString() +
                              " " +
                              item.unit!,
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              color: Colors.white)),
                    ],
                  ),
                ),
              ],
            );
          }
        }),
  );
}
