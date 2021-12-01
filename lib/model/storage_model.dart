// ignore_for_file: prefer_const_declarations, slash_for_doc_comments

/**********************************************************************
 *
 *  storage_model.dart
 * 
 *  initilize the variable of the storage table
 *  handle the data from the database which is json file
 *  and recreate it into dart format
 *  
 *  Created by Boba Tea group, 30 Nov 2021 for CPE327 Term Project
 * 
 **********************************************************************/

// Initialize the storage table
final String tableStorage = 'Storage';

// Define the variable of the storage table
// values - the list containing details of the storage
// id - ID of the storages, starting from 1
// expirationDate - date of expiry of the ingredients in dd/MM/yyyy format
// amount - available amount of the ingredients that user have
// createTime - timestamp that marked when the ingredients was added
class StorageField {
  static final List<String> values = [
    id,
    ingredientID,
    expirationDate,
    amount,
    createTime
  ];

  static final String id = 'storageId';
  static final String ingredientID = 'ingredientID';
  static final String expirationDate = 'expirationDate';
  static final String amount = 'amount';
  static final String createTime = 'createTime';

  // Define the data from other tables to be used in the interface
  static final String imageUrl = 'image_url';
  static final String name = 'name';
  static final String description = 'description';
  static final String type = 'type';
  static final String unit = 'unit';
}

// Convert the data between dart format and json format
class Storage {
  final int? id;
  final int? ingredientID;
  final DateTime expirationDate;
  final double? amount;
  final DateTime createTime;
  final String? imageUrl;
  final String? name;
  final String? description;
  final String? type;
  final String? unit;

  const Storage(
      {this.id,
      required this.ingredientID,
      required this.expirationDate,
      required this.amount,
      required this.createTime,
      this.imageUrl,
      this.name,
      this.description,
      this.type,
      this.unit});

  // Handle the data that ready to be used in the database
  Storage copy({
    int? id,
    int? ingredientID,
    DateTime? expirationDate,
    double? amount,
    DateTime? createTime,
  }) =>
      Storage(
          id: id ?? this.id,
          ingredientID: ingredientID ?? this.ingredientID,
          expirationDate: expirationDate ?? this.expirationDate,
          amount: amount ?? this.amount,
          createTime: createTime ?? this.createTime);

  // Recreate object ingredients from Json format to dart format
  static Storage fromJson(Map<String, Object?> json) => Storage(
      id: json[StorageField.id] as int?,
      ingredientID: json[StorageField.ingredientID] as int,
      expirationDate:
          DateTime.parse(json[StorageField.expirationDate] as String),
      amount: json[StorageField.amount] as double,
      createTime: DateTime.parse(json[StorageField.createTime] as String),
      imageUrl: json[StorageField.imageUrl] as String?,
      name: json[StorageField.name] as String?,
      description: json[StorageField.description] as String?,
      unit: json[StorageField.unit] as String?,
      type: json[StorageField.type] as String?);

  Map<String, Object?> toJson() => {
        StorageField.id: id,
        StorageField.ingredientID: ingredientID,
        StorageField.expirationDate: expirationDate.toIso8601String(),
        StorageField.amount: amount,
        StorageField.createTime: createTime.toIso8601String()
      };
}
