// ignore_for_file: prefer_const_constructors, slash_for_doc_comments

/**********************************************************************
 *
 *  ingredient_list.dart
 * 
 *  This file provide the list of ingredient that available in our app
 *  and return to use in other widgets
 * 
 *  Created by Boba Tea group, 30 Nov 2021 for CPE327 Term Project
 * 
 **********************************************************************/

import 'package:bobatea/model/ingredient_model.dart';

// List of the ingredients of our app
// id - ID of the ingredients, starting from 1
// name - name of the ingredients
// description - details of the ingredients
// image_url - image from the network of the ingredients
// type - specify the type of the ingredients
// unit - unit of the ingredients in g., ml. and piece
List<Ingredient> ingredients = [
  Ingredient(
      id: 1,
      name: "Pork shoulder",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/512/1699/1699271.png",
      type: "Meat",
      unit: "g."),
  Ingredient(
      id: 2,
      name: "Kaffir lime leaf",
      description: "-",
      image_url:
          "https://img.favpng.com/10/3/5/kaffir-lime-lemon-thai-cuisine-leaf-food-png-favpng-ja47zkb6ZANwrC1whHrw4cs8H.jpg",
      type: "Vegetable",
      unit: "g."),
  Ingredient(
      id: 3,
      name: "Red pepper",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/512/1868/1868925.png",
      type: "Vegetable",
      unit: "g."),
  Ingredient(
      id: 4,
      name: "Panang Curry paste",
      description: "-",
      image_url:
          "https://1212928256.rsc.cdn77.org/content/images/thumbs/000/0004637_th-panang-curry-paste-in-sachet.png",
      type: "Other",
      unit: "g."),
  Ingredient(
      id: 5,
      name: "Thick coconut milk",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/512/5015/5015374.png",
      type: "Fluid",
      unit: "ml."),
  Ingredient(
      id: 6,
      name: "Thin coconut milk",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/512/5015/5015374.png",
      type: "Fluid",
      unit: "ml."),
  Ingredient(
      id: 7,
      name: "Fish sauce",
      description: "-",
      image_url:
          "https://cdn.icon-icons.com/icons2/2032/PNG/512/fish_sauce_icon_124114.png",
      type: "Fluid",
      unit: "ml."),
  Ingredient(
      id: 8,
      name: "Palm sugar",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/512/5137/5137061.png",
      type: "Other",
      unit: "g."),
  Ingredient(
      id: 9,
      name: "Bread",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/512/883/883561.png",
      type: "Other",
      unit: "g."),
  Ingredient(
      id: 10,
      name: "Cheddar Cheese",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/512/5900/5900342.png",
      type: "Other",
      unit: "g."),
  Ingredient(
      id: 11,
      name: "Bologna",
      description: "-",
      image_url:
          "https://www.crushpixel.com/big-static16/preview4/sausages-rgb-color-icon-2256798.jpg",
      type: "Meat",
      unit: "g."),
  Ingredient(
      id: 12,
      name: "Egg",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/512/837/837611.png",
      type: "Meat",
      unit: "piece"),
  Ingredient(
      id: 13,
      name: "Butter",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/512/2437/2437955.png",
      type: "Other",
      unit: "g."),
  Ingredient(
      id: 14,
      name: "Minced pork",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/512/4062/4062464.png",
      type: "Meat",
      unit: "g."),
  Ingredient(
      id: 15,
      name: "Onion",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/512/1054/1054131.png",
      type: "Vegetable",
      unit: "g."),
  Ingredient(
      id: 16,
      name: "Carrot",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/512/883/883760.png",
      type: "Vegetable",
      unit: "g."),
  Ingredient(
      id: 17,
      name: "Baby corn",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/512/6183/6183103.png",
      type: "Vegetable",
      unit: "g."),
  Ingredient(
      id: 18,
      name: "Asparagus",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/512/1625/1625051.png",
      type: "Vegetable",
      unit: "g."),
  Ingredient(
      id: 19,
      name: "Tomato",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/512/1202/1202125.png",
      type: "Vegetable",
      unit: "g."),
  Ingredient(
      id: 20,
      name: "Scallion",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/512/680/680945.png",
      type: "Vegetable",
      unit: "g."),
  Ingredient(
      id: 21,
      name: "Coriander",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/128/5346/5346193.png",
      type: "Vegetable",
      unit: "g."),
  Ingredient(
      id: 22,
      name: "Ketchup",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/512/877/877824.png",
      type: "Other",
      unit: "ml."),
  Ingredient(
      id: 23,
      name: "Oyster sauce",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/512/3448/3448062.png",
      type: "Other",
      unit: "ml."),
  Ingredient(
      id: 24,
      name: "Sugar",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/512/3093/3093536.png",
      type: "Other",
      unit: "g."),
  Ingredient(
      id: 25,
      name: "light soy sauce",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/512/1471/1471433.png",
      type: "Other",
      unit: "ml."),
  Ingredient(
      id: 26,
      name: "pepper",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/512/4212/4212858.png",
      type: "Other",
      unit: "g."),
  Ingredient(
      id: 27,
      name: "Spaghetti",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/512/135/135619.png",
      type: "Other",
      unit: "g."),
  Ingredient(
      id: 28,
      name: "Bacon",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/512/1582/1582138.png",
      type: "Meat",
      unit: "g."),
  Ingredient(
      id: 29,
      name: "Pasley",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/128/1407/1407861.png",
      type: "Vegetable",
      unit: "g."),
  Ingredient(
      id: 30,
      name: "Whipped cream",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/512/5816/5816089.png",
      type: "Fluid",
      unit: "ml."),
  Ingredient(
      id: 31,
      name: "Pamesan cheese",
      description: "-",
      image_url:
          "https://cdn.iconscout.com/icon/free/png-256/cheese-1806482-1534540.png",
      type: "Other",
      unit: "g."),
  Ingredient(
      id: 32,
      name: "Salt",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/512/736/736923.png",
      type: "Other",
      unit: "g."),
  Ingredient(
      id: 33,
      name: "Tilapia",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/512/3751/3751261.png",
      type: "Meat",
      unit: "g."),
  Ingredient(
      id: 34,
      name: "Galangal",
      description: "-",
      image_url:
          "https://thumbs.dreamstime.com/b/icon-fresh-ginger-root-two-green-leaves-natural-food-organic-product-cooking-ingredient-healthy-nutrition-colorful-vector-136856333.jpg",
      type: "Vegetable",
      unit: "g."),
  Ingredient(
      id: 35,
      name: "Lemongrass",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/512/1087/1087451.png",
      type: "Vegetable",
      unit: "g."),
  Ingredient(
      id: 36,
      name: "Shallot",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/512/5019/5019700.png",
      type: "Vegetable",
      unit: "g."),
  Ingredient(
      id: 37,
      name: "Garlic",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/512/4139/4139325.png",
      type: "Vegetable",
      unit: "g."),
  Ingredient(
      id: 38,
      name: "Cilantro",
      description: "-",
      image_url:
          "https://thumbs.dreamstime.com/b/cilantro-doodle-icon-vector-illustration-color-186148423.jpg",
      type: "Vegetable",
      unit: "g."),
  Ingredient(
      id: 39,
      name: "Spring onion",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/512/4139/4139319.png",
      type: "Vegetable",
      unit: "g."),
  Ingredient(
      id: 40,
      name: "Holy basil",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/512/1135/1135508.png",
      type: "Vegetable",
      unit: "g."),
  Ingredient(
      id: 41,
      name: "Dried chili",
      description: "-",
      image_url:
          "http://assets.stickpng.com/thumbs/585ea761cb11b227491c3534.png",
      type: "Vegetable",
      unit: "g"),
  Ingredient(
      id: 42,
      name: "Guinea-pepper",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/512/433/433671.png",
      type: "Vegetable",
      unit: "g."),
  Ingredient(
      id: 43,
      name: "Tamarind juice",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/512/4139/4139345.png",
      type: "Fluid",
      unit: "ml."),
  Ingredient(
      id: 44,
      name: "Lime juice",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/512/765/765614.png",
      type: "Fluid",
      unit: "ml."),
  Ingredient(
      id: 45,
      name: "Winter melon",
      description: "-",
      image_url:
          "https://www.pngplay.com/wp-content/uploads/10/Winter-Melon-PNG-Clipart-Background.png",
      type: "Vegetable",
      unit: "g."),
  Ingredient(
      id: 46,
      name: "Pork spare rib",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/512/1582/1582225.png",
      type: "Meat",
      unit: "g."),
  Ingredient(
      id: 47,
      name: "Shitake mushroom",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/512/1134/1134449.png",
      type: "Vegetable",
      unit: "g."),
  Ingredient(
      id: 48,
      name: "Picked lime",
      description: "-",
      image_url:
          "https://cdn.happyfresh.com/t/s_large,c_fit/spree/images/attachments/b1bfddb4c20331aad6a8d788551f99f7f10c255f-original.jpg",
      type: "Other",
      unit: "piece"),
  Ingredient(
      id: 49,
      name: "Minced meat",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/512/5222/5222914.png",
      type: "Meat",
      unit: "g."),
  Ingredient(
      id: 50,
      name: "Chicken drumstick",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/512/1699/1699371.png",
      type: "Meat",
      unit: "g."),
  Ingredient(
      id: 51,
      name: "Potato",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/512/765/765613.png",
      type: "Vegetable",
      unit: "g."),
  Ingredient(
      id: 52,
      name: "Cardamom",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/512/4788/4788099.png",
      type: "Vegetable",
      unit: "g."),
  Ingredient(
      id: 53,
      name: "Bay leaf",
      description: "-",
      image_url:
          "https://e7.pngegg.com/pngimages/954/542/png-clipart-west-indies-bay-leaf-pimenta-racemosa-oil-bay-rum-bay-leaves-miscellaneous-leaf-vegetable.png",
      type: "Vegetable",
      unit: "g."),
  Ingredient(
      id: 54,
      name: "Peanut",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/512/1728/1728767.png",
      type: "Vegetable",
      unit: "g."),
  Ingredient(
      id: 55,
      name: "Massaman curry paste",
      description: "-",
      image_url: "https://www.thaiagri.com/images/Product/1560407967.png",
      type: "Other",
      unit: "g."),
  Ingredient(
      id: 56,
      name: "Shrimp",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/512/1691/1691147.png",
      type: "Meat",
      unit: "g."),
  Ingredient(
      id: 57,
      name: "Seasoning soy saurce",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/512/1471/1471433.png",
      type: "Other",
      unit: "ml."),
  Ingredient(
      id: 58,
      name: "Pork belly",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/512/1699/1699369.png",
      type: "Meat",
      unit: "g."),
  Ingredient(
      id: 59,
      name: "Squid",
      description: "https://cdn-icons-png.flaticon.com/512/616/616661.png",
      image_url: "https://cdn-icons-png.flaticon.com/512/616/616661.png",
      type: "Meat",
      unit: "g."),
  Ingredient(
      id: 60,
      name: "Cabbage",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/128/1453/1453048.png",
      type: "Vegetable",
      unit: "g."),
  Ingredient(
      id: 61,
      name: "Celery",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/512/1581/1581804.png",
      type: "Vegetable",
      unit: "g."),
  Ingredient(
      id: 62,
      name: "Chicken wing",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/512/933/933245.png",
      type: "Meat",
      unit: "g."),
  Ingredient(
      id: 63,
      name: "Tempura flour",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/512/2743/2743000.png",
      type: "Other",
      unit: "g."),
  Ingredient(
      id: 64,
      name: "Wakame seaweed",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/512/791/791597.png",
      type: "Vegetable",
      unit: "g."),
  Ingredient(
      id: 65,
      name: "Soft tofu",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/512/811/811462.png",
      type: "Other",
      unit: "g."),
  Ingredient(
      id: 66,
      name: "Japanese buching onion",
      description: "-",
      image_url:
          "https://thumbs.dreamstime.com/b/japanese-bunching-onion-welsh-67711373.jpg",
      type: "Vegetable",
      unit: "g."),
  Ingredient(
      id: 67,
      name: "Yosename soup",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/512/4968/4968974.png",
      type: "Other",
      unit: "ml."),
  Ingredient(
      id: 68,
      name: "Milk",
      description: "-",
      image_url: "https://cdn-icons-png.flaticon.com/512/684/684631.png",
      type: "Fluid",
      unit: "ml.")
];

// Return the ingredients list to other widgets
List<Ingredient> getIngredient() {
  return ingredients;
}
