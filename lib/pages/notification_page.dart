// ignore_for_file: avoid_function_literals_in_foreach_calls, slash_for_doc_comments

/**********************************************************************
 *
 *  notification_page.dart
 * 
 *  UI page showing the notication page and show the detail description
 *  of the storage, when and what will expire
 * 
 *  Created by Boba Tea group, 30 Nov 2021 for CPE327 Term Project
 * 
 **********************************************************************/

import 'package:bobatea/db/ingredient_db.dart';
import 'package:bobatea/db/storage_db.dart';
import 'package:bobatea/model/ingredient_model.dart';
import 'package:bobatea/model/storage_model.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors

// Stateful widget used to create the UI
// Read the ingredient data from the database
// Return the all ingredient that inside our provider list
class NotificationPage extends StatelessWidget {
  Future<Ingredient> readByName(String name) async {
    final db = IngredientDB();
    final result = await db.readbyName(name);
    return result;
  }

  // Used to find the difference of the date
  // today and the expiry date
  // Return the difference in int value 24 hours format
  int daysBetween(DateTime to) {
    DateTime from = DateTime.now();
    from = DateTime(from.year, from.month, from.day);
    to = DateTime(to.year, to.month, to.day);
    return (to.difference(from).inHours / 24).round();
  }

  // Notification for the storage which call the data
  // from the it and restrict to show
  // only the data that was 3 days or below
  Future<List<Storage>> listNotification() async {
    final db = StorageDB();
    final storages = await db.readAll();
    List<Storage> list = [];
    storages.forEach((item) {
      int diff = daysBetween(item.expirationDate);
      if (diff <= 3) {
        list.add(item);
      }
    });
    return list;
  }

  // UI builder showing the notification page in the app
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            // Show the title of the page for recognize
            Container(
                margin: const EdgeInsets.all(10.0),
                child: const ListTile(
                  title: Text("Notifications",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.orange,
                          fontWeight: FontWeight.bold)),
                  subtitle: Text("Check all your expiry and updates here",
                      textAlign: TextAlign.center),
                )),
            // Expanded widget to list the notification that pulled from the storage
            Expanded(
              child: SizedBox(
                  height: 200,
                  child: FutureBuilder(
                    future: listNotification(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      // Snapshot used to hold the app when loading the data to prevent malfunction
                      if (snapshot.data == null) {
                        return const Center(
                          child: Text("Loading..."),
                        );
                        // After finished loading, the builder was loaded and show the notifications
                      } else {
                        return ListView.builder(
                            itemCount: snapshot.data.length,
                            itemBuilder: (context, int index) {
                              int diff = daysBetween(
                                  snapshot.data[index].expirationDate);
                              String name = snapshot.data[index].name;
                              String img = snapshot.data[index].imageUrl;
                              // Card containing the ingredient images and names
                              // that met the criteria (3 days to expiry)
                              return Card(
                                elevation: 10,
                                margin: const EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 8),
                                child: ListTile(
                                  leading: CircleAvatar(
                                    radius: 30,
                                    backgroundImage: NetworkImage(img),
                                    backgroundColor: Colors.transparent,
                                  ),
                                  title: Text(name),
                                  trailing: getTextDiff(diff),
                                ),
                              );
                            });
                      }
                    },
                  )),
            ),
          ],
        ));
  }

  // Condition for day that near the expiry to difference the expiry
  // for easier recognization of the ingredients
  Text getTextDiff(int diff) {
    if (diff < 0) {
      return Text('Expired', style: TextStyle(color: Colors.red[900]));
    } else if (diff == 0) {
      return Text('Expire Today', style: TextStyle(color: Colors.orange[900]));
    } else {
      return Text('$diff day(s) left',
          style: TextStyle(color: Colors.yellow[800]));
    }
  }
}
