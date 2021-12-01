// ignore_for_file: non_constant_identifier_names, slash_for_doc_comments

/**********************************************************************
 *
 *  add_page.dart
 * 
 *  UI page showing the storage for the user to choose from, let them edit and
 *  add the ingredients inside the database then show it here
 * 
 *  Created by Boba Tea group, 30 Nov 2021 for CPE327 Term Project
 * 
 **********************************************************************/

import 'dart:ui';
import 'package:bobatea/db/ingredient_db.dart';
import 'package:bobatea/db/storage_db.dart';
import 'package:bobatea/db/notification_api.dart';
import 'package:bobatea/model/ingredient_model.dart';
import 'package:bobatea/model/storage_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// Read the ingredients data from the database
// Return the all the ingredients that inside our provider list
Future<List<Ingredient>> readAllingredient() async {
  final db = IngredientDB();
  final result = await db.readAll();
  return result;
}

// Read the storage data from the database
// Return the all the storage data that the user added
Future<List<Storage>> readAllStorage() async {
  final db = StorageDB();
  final result = await db.readAll();
  return result;
}

// Read the ingredient data from the database
// Return the ingredient name that inside our provider list
Future<Ingredient> readByName(String name) async {
  final db = IngredientDB();
  final result = await db.readbyName(name);
  return result;
}

// Stateful widget used to create the UI
// ignore: use_key_in_widget_constructors
class AddPage extends StatefulWidget {
  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
// Insert the storage that the user added
// Return the data onto the list
  Future<Storage> insert_storage(Storage storage) async {
    final db = StorageDB();
    Storage data = await db.insert(storage);
    return data;
  }

// iUpdate the storage that the user added
// Return the data onto the list
  Future updateStorage(Storage storage) async {
    final db = StorageDB();
    await db.update(storage);
  }

// Delete the storage that the user added
// Return the data onto the list
  Future deleteStorage(int? id) async {
    final db = StorageDB();
    await db.delete(id!);
  }

  String? value;
  DateTime? _dateTime;
  final stockController = TextEditingController();

  // UI builder showing the add+storage page in the app
  @override
  Widget build(BuildContext context) => Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: FutureBuilder(
            future: readAllingredient(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              // Snapshot used to hold the app when loading the data to prevent malfunction
              if (snapshot.data == null) {
                return const Center(
                  child: Text("Loading..."),
                );
                // After finished loading, the builder was loaded and show the data
              } else {
                return Column(
                  children: [
                    // Container for the outer border of the shape
                    Container(
                      height: 210,
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
                        height: 200,
                        width: 400,
                        alignment: Alignment.topCenter,
                        child: Column(
                          children: [
                            // Show the title of the page for recognize
                            Container(
                                margin: const EdgeInsets.all(10.0),
                                child: const ListTile(
                                  title: Text("Your Storage",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 40,
                                          color: Colors.orange,
                                          fontWeight: FontWeight.bold)),
                                  subtitle: Text(
                                      "Your available storage from refrigerator is here !",
                                      textAlign: TextAlign.center),
                                )),
                            //Container containing the button to call the modal that can add the data
                            Container(
                              margin: const EdgeInsets.only(top: 15),
                              child: buildButton(
                                text: 'Click Here To Add',
                                // Upon clicked, call the modal and build the field to insert the data
                                onClicked: () => showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Colors.transparent,
                                    context: context,
                                    builder: (context) =>
                                        buildSheet(item: snapshot.data)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    // Show the list of added data on the page
                    buildStorageList(snapshot.data)
                  ],
                );
              }
            }),
      );

  // Widget for building the button that used call the add ingredients modal
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
          style: const TextStyle(fontSize: 15),
        ),
        onPressed: onClicked,
      );

  // Widget for building the scrollable sheet inside the modal
  Widget buildSheet({required List<Ingredient> item}) =>
      DraggableScrollableSheet(
        initialChildSize: 0.7,
        minChildSize: 0.3,
        maxChildSize: 0.7,
        // Build the space for the modal that available to insert the data
        builder: (_, controller) => Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              color: Colors.white),
          padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
          // ListView for the add ingredients page
          child: ListView(
            controller: controller,
            children: [
              // Show the title of the page for recognize
              Container(
                  margin: const EdgeInsets.all(10.0),
                  child: const ListTile(
                    title: Text("Add Ingredient",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.orange,
                            fontWeight: FontWeight.bold)),
                    subtitle: Text("Desired to preserving your precious goods ",
                        textAlign: TextAlign.center),
                  )),
              // Ingredients word on the top left
              const Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Text("Ingredients",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.orange,
                        fontWeight: FontWeight.bold)),
              ),
              // Container create a dropdown that users can choose the list
              // of available ingredients in our provider list
              Container(
                margin: const EdgeInsets.only(top: 16, bottom: 16),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.orange)),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: value,
                    iconSize: 20,
                    icon:
                        const Icon(Icons.arrow_drop_down, color: Colors.orange),
                    items: item.map(buildMenuItem).toList(),
                    onChanged: (value) {
                      setState(() => this.value = value);
                    },
                  ),
                ),
              ),
              // Call the stock insertion widget
              buildStock(),
              Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: const Text('Please Pick Expiry Date')),
              // Call the pick date widget
              buildDate(),
              // Add button that will insert the above data into the database upon pressed
              // the button, and set the notification
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 100),
                  child: Row(
                    children: [
                      TextButton(
                        child: const Text('Add'),
                        onPressed: () async {
                          Storage? storage;
                          if (value != null && _dateTime != null) {
                            Ingredient item = await readByName(value!);

                            DateTime createTime = DateTime.now();
                            double? amount =
                                double.tryParse(stockController.text);
                            storage = Storage(
                                ingredientID: item.id,
                                expirationDate: _dateTime!,
                                amount: amount,
                                createTime: createTime,
                                unit: item.unit,
                                imageUrl: item.image_url,
                                name: item.name,
                                type: item.type);

                            Storage handle = await insert_storage(storage);

                            await NotificationApi.scheduleNotification(handle);
                          }
                          Navigator.of(context).pop();
                        },
                      ),
                      // Button that will cancel the add operation
                      TextButton(
                        child: const Text('Cancel'),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      );
  // Widget for building the date picker in dd MM yyyy format
  Widget buildDate() {
    DateTime now = DateTime.now();
    DateTime last = now.add(const Duration(days: 1000));
    return ElevatedButton(
      child: Text(_dateTime == null
          ? 'Tap Here To Pick'
          : DateFormat("dd - MM - yyyy").format(_dateTime!)),
      onPressed: () {
        showDatePicker(
                context: context,
                initialDate: _dateTime ?? now,
                firstDate: now,
                lastDate: last)
            .then((date) {
          setState(() {
            _dateTime = date;
          });
        });
      },
    );
  }

  // Widget for building the ListView of added ingredients
  // and the calculated expiry date
  Widget buildStorageList(List<Ingredient> item) {
    // Used to find the difference of the date
    // today and the expiry date
    // Return the difference in int value 24 hours format
    int daysBetween(DateTime to) {
      DateTime from = DateTime.now();
      from = DateTime(from.year, from.month, from.day);
      to = DateTime(to.year, to.month, to.day);
      return (to.difference(from).inHours / 24).round();
    }

    // Build the list of added ingredients and show its expiry date
    return FutureBuilder(
      future: readAllStorage(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        // Snapshot used to hold the app when loading the data to prevent malfunction
        if (snapshot.data == null) {
          return const Center(
            child: Text("Loading..."),
          );
          // After finished loading, the builder was loaded and show the scrollable sheet
        } else {
          return SingleChildScrollView(
            child: SizedBox(
              height: 450,
              child: ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, int index) {
                    // Snapshot used to hold the app when loading the data to prevent malfunction
                    if (snapshot.data[index] == null) {
                      return const Center(
                        child: Text("Loading..."),
                      );
                      // After finished loading, it will load the name and amount of ingredients inside the app
                    } else {
                      String name = snapshot.data[index].name;
                      double amount = snapshot.data[index].amount;

                      return FutureBuilder(
                          future: readByName(name),
                          builder:
                              // Snapshot used to hold the app when loading the data to prevent malfunction
                              (BuildContext context, AsyncSnapshot handle) {
                            if (handle.data == null) {
                              return const Center(
                                child: Text("Loading..."),
                              );
                              // After finished loading, the builder was loaded and show the added ingredients inside the sheet
                            } else {
                              String unit = snapshot.data[index].unit;
                              final diff = daysBetween(
                                  snapshot.data[index].expirationDate);
                              // Card for each ingredients
                              return Card(
                                  elevation: 10,
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 8),
                                  child: ListTile(
                                    leading: CircleAvatar(
                                      radius: 30,
                                      backgroundImage:
                                          NetworkImage(handle.data.image_url),
                                      backgroundColor: Colors.transparent,
                                    ),
                                    title: Text(name),
                                    subtitle: Text('$amount  $unit'),
                                    trailing: getTextDiff(diff),
                                    onTap: () async {
                                      await editStorage(snapshot.data[index]);
                                    },
                                  ));
                            }
                          });
                    }
                  }),
            ),
          );
        }
      },
    );
  }

  // Popup widget that let the user edit their added ingredients data
  Future<Storage?> editStorage(Storage item) {
    String? name = item.name;
    double? amount = item.amount;
    // Show the popup when clicked on the ingredients
    // User can edit the amount and the expiry date here
    return showDialog<Storage>(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('$name'),
              content: Container(
                height: 120,
                margin: const EdgeInsets.symmetric(vertical: 30),
                // Insert data section
                child: Column(
                  children: [
                    TextField(
                      controller: stockController,
                      decoration: InputDecoration(
                        hintText: '$amount',
                        labelText: '$amount',
                        prefixIcon: const Icon(Icons.fastfood),
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.close),
                          onPressed: () => stockController.clear(),
                        ),
                        border: const OutlineInputBorder(),
                      ),
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.number,
                    ),
                    buildDate()
                  ],
                ),
              ),
              // Add button that will update the above data into the database upon pressed
              // the button, and set the notification
              actions: [
                TextButton(
                    child: const Text('Update'),
                    onPressed: () async {
                      double? amount = double.tryParse(stockController.text);

                      if (true) {
                        DateTime createTime = DateTime.now();

                        // ignore: todo
                        // TODO not finish yet
                        Storage storage = Storage(
                            id: item.id,
                            ingredientID: item.ingredientID,
                            amount: amount,
                            expirationDate: _dateTime ?? item.expirationDate,
                            createTime: createTime);

                        await updateStorage(storage);
                        await NotificationApi.scheduleNotification(storage);
                      }
                      Navigator.of(context).pop();
                    }),
                // Button that will delete the added data from the database
                TextButton(
                    child: const Text('Delete'),
                    onPressed: () async {
                      await deleteStorage(item.id);
                      Navigator.of(context).pop();
                    }),
                // Button that will cancel the operation
                TextButton(
                    child: const Text('Cancel'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    }),
              ],
            ));
  }

  // Submit the data of the stock
  void submit() {
    Navigator.of(context).pop(stockController);
  }

  // Condition for day that near the expiry to difference the expiry
  // for easier recognization of the ingredients
  Text getTextDiff(int diff) {
    if (diff < 0) {
      return Text('Expired', style: TextStyle(color: Colors.red[900]));
    } else if (diff == 0) {
      return Text('Expire Today', style: TextStyle(color: Colors.orange[900]));
    } else if (diff <= 3) {
      return Text('$diff day(s) left',
          style: TextStyle(color: Colors.yellow[800]));
    } else {
      return Text('$diff days left',
          style: TextStyle(color: Colors.green[900]));
    }
  }

  // Textfield for typing the stock that the user have
  // Only accepting numbers
  Widget buildStock() {
    return TextField(
      controller: stockController,
      decoration: InputDecoration(
        hintText: 'Eg. 4',
        labelText: 'Stock',
        prefixIcon: const Icon(Icons.fastfood),
        suffixIcon: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => stockController.clear(),
        ),
        border: const OutlineInputBorder(),
      ),
      textInputAction: TextInputAction.done,
      keyboardType: TextInputType.number,
    );
  }

  // Dropdown menu for the ingredients list that will show
  // the image and name of the ingredients that available in the list
  DropdownMenuItem<String> buildMenuItem(Ingredient item) {
    String name = item.name;
    return DropdownMenuItem(
      value: item.name,
      child: Row(
        children: [
          Container(
              width: 16,
              height: 16,
              margin: const EdgeInsets.only(right: 16),
              child: Image.network(item.image_url)),
          Text(
            name,
            style: const TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}
