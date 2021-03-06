// ignore_for_file: file_names, slash_for_doc_comments

/**********************************************************************
 *
 *  usageIngredient_list.dart
 * 
 *  This file provide the list of amount of ingredient that 
 *  used for each recipe that available in our app
 *  and return to use in other widgets
 * 
 *  Created by Boba Tea group, 30 Nov 2021 for CPE327 Term Project
 * 
 **********************************************************************/

import 'package:bobatea/model/usageIngredient_model.dart';

// List of the recipe of our app
// id - ID of the usage ingredients, starting from 1
// ingredientId - ID of the ingredients, starting from 1
// recipeId - ID of the recipe, starting from 1
// amount - usage amount of the recipes
// image_url - image from the network of the ingredients
// unit - unit of the ingredients in g., ml. and piece
List<UsageIngredient> usageIngredients = [
  const UsageIngredient(
      id: 1,
      ingredientId: 1,
      recipeId: 1,
      amount: 500,
      name: "Pork shoulder",
      image_url: "https://cdn-icons-png.flaticon.com/512/1699/1699271.png",
      unit: "g."),
  const UsageIngredient(
      id: 2,
      ingredientId: 2,
      recipeId: 1,
      amount: 5,
      name: "Kaffir lime leaf",
      image_url:
          "https://img.favpng.com/10/3/5/kaffir-lime-lemon-thai-cuisine-leaf-food-png-favpng-ja47zkb6ZANwrC1whHrw4cs8H.jpg",
      unit: "g."),
  const UsageIngredient(
      id: 3,
      ingredientId: 3,
      recipeId: 1,
      amount: 15,
      name: "Red pepper",
      image_url: "https://cdn-icons-png.flaticon.com/512/1868/1868925.png",
      unit: "g."),
  const UsageIngredient(
      id: 4,
      ingredientId: 4,
      recipeId: 1,
      amount: 40,
      name: "Panang Curry paste",
      image_url:
          "https://1212928256.rsc.cdn77.org/content/images/thumbs/000/0004637_th-panang-curry-paste-in-sachet.png",
      unit: "g."),
  const UsageIngredient(
      id: 5,
      ingredientId: 5,
      recipeId: 1,
      amount: 500,
      name: "Thick coconut milk",
      image_url: "https://cdn-icons-png.flaticon.com/512/5015/5015374.png",
      unit: "ml."),
  const UsageIngredient(
      id: 6,
      ingredientId: 6,
      recipeId: 1,
      amount: 300,
      name: "Thin coconut milk",
      image_url: "https://cdn-icons-png.flaticon.com/512/5015/5015374.png",
      unit: "ml."),
  const UsageIngredient(
      id: 7,
      ingredientId: 7,
      recipeId: 1,
      amount: 40,
      name: "Fish sauce",
      image_url:
          "https://cdn.icon-icons.com/icons2/2032/PNG/512/fish_sauce_icon_124114.png",
      unit: "ml."),
  const UsageIngredient(
      id: 8,
      ingredientId: 8,
      recipeId: 1,
      amount: 20,
      name: "Palm sugar",
      image_url: "https://cdn-icons-png.flaticon.com/512/5137/5137061.png",
      unit: "g."),
  const UsageIngredient(
      id: 9,
      ingredientId: 9,
      recipeId: 2,
      amount: 1,
      name: "Bread",
      image_url: "https://cdn-icons-png.flaticon.com/512/883/883561.png",
      unit: "g."),
  const UsageIngredient(
      id: 10,
      ingredientId: 10,
      recipeId: 2,
      amount: 1,
      name: "Cheddar Cheese",
      image_url: "https://cdn-icons-png.flaticon.com/512/5900/5900342.png",
      unit: "g."),
  const UsageIngredient(
      id: 11,
      ingredientId: 11,
      recipeId: 2,
      amount: 1,
      name: "Bologna",
      image_url:
          "https://www.crushpixel.com/big-static16/preview4/sausages-rgb-color-icon-2256798.jpg",
      unit: "g."),
  const UsageIngredient(
      id: 12,
      ingredientId: 12,
      recipeId: 2,
      amount: 1,
      name: "Egg",
      image_url: "https://cdn-icons-png.flaticon.com/512/837/837611.png",
      unit: "piece"),
  const UsageIngredient(
      id: 13,
      ingredientId: 13,
      recipeId: 2,
      amount: 1,
      name: "Butter",
      image_url: "https://cdn-icons-png.flaticon.com/512/2437/2437955.png",
      unit: "g."),
  const UsageIngredient(
      id: 14,
      ingredientId: 12,
      recipeId: 3,
      amount: 3,
      name: "Egg",
      image_url: "https://cdn-icons-png.flaticon.com/512/837/837611.png",
      unit: "piece"),
  const UsageIngredient(
      id: 15,
      ingredientId: 14,
      recipeId: 3,
      amount: 200,
      name: "Minced pork",
      image_url: "https://cdn-icons-png.flaticon.com/512/4062/4062464.png",
      unit: "g."),
  const UsageIngredient(
      id: 16,
      ingredientId: 15,
      recipeId: 3,
      amount: 50,
      name: "Onion",
      image_url: "https://cdn-icons-png.flaticon.com/512/1054/1054131.png",
      unit: "g."),
  const UsageIngredient(
      id: 17,
      ingredientId: 16,
      recipeId: 3,
      amount: 50,
      name: "Carrot",
      image_url: "https://cdn-icons-png.flaticon.com/512/883/883760.png",
      unit: "g."),
  const UsageIngredient(
      id: 18,
      ingredientId: 17,
      recipeId: 3,
      amount: 50,
      name: "Baby corn",
      image_url: "https://cdn-icons-png.flaticon.com/512/6183/6183103.png",
      unit: "g."),
  const UsageIngredient(
      id: 19,
      ingredientId: 18,
      recipeId: 3,
      amount: 30,
      name: "Asparagus",
      image_url: "https://cdn-icons-png.flaticon.com/512/1625/1625051.png",
      unit: "g."),
  const UsageIngredient(
      id: 20,
      ingredientId: 19,
      recipeId: 3,
      amount: 50,
      name: "Tomato",
      image_url: "https://cdn-icons-png.flaticon.com/512/1202/1202125.png",
      unit: "g."),
  const UsageIngredient(
      id: 21,
      ingredientId: 20,
      recipeId: 3,
      amount: 10,
      name: "Scallion",
      image_url: "https://cdn-icons-png.flaticon.com/512/680/680945.png",
      unit: "g."),
  const UsageIngredient(
      id: 22,
      ingredientId: 21,
      recipeId: 3,
      amount: 5,
      name: "Coriander",
      image_url: "https://cdn-icons-png.flaticon.com/128/5346/5346193.png",
      unit: "g."),
  const UsageIngredient(
      id: 23,
      ingredientId: 22,
      recipeId: 3,
      amount: 60,
      name: "Ketchup",
      image_url: "https://cdn-icons-png.flaticon.com/512/877/877824.png",
      unit: "ml."),
  const UsageIngredient(
      id: 24,
      ingredientId: 23,
      recipeId: 3,
      amount: 45,
      name: "Oyster sauce",
      image_url: "https://cdn-icons-png.flaticon.com/512/3448/3448062.png",
      unit: "ml."),
  const UsageIngredient(
      id: 25,
      ingredientId: 25,
      recipeId: 3,
      amount: 10,
      name: "light soy sauce",
      image_url: "https://cdn-icons-png.flaticon.com/512/1471/1471433.png",
      unit: "ml."),
  const UsageIngredient(
      id: 26,
      ingredientId: 26,
      recipeId: 3,
      amount: 4,
      name: "pepper",
      image_url: "https://cdn-icons-png.flaticon.com/512/4212/4212858.png",
      unit: "g."),
  const UsageIngredient(
      id: 27,
      ingredientId: 24,
      recipeId: 3,
      amount: 10,
      name: "Sugar",
      image_url: "https://cdn-icons-png.flaticon.com/512/3093/3093536.png",
      unit: "g."),
  const UsageIngredient(
      id: 28,
      ingredientId: 27,
      recipeId: 4,
      amount: 50,
      name: "Spaghetti",
      image_url: "https://cdn-icons-png.flaticon.com/512/135/135619.png",
      unit: "g."),
  const UsageIngredient(
      id: 29,
      ingredientId: 28,
      recipeId: 4,
      amount: 50,
      name: "Bacon",
      image_url: "https://cdn-icons-png.flaticon.com/512/1582/1582138.png",
      unit: "g."),
  const UsageIngredient(
      id: 30,
      ingredientId: 15,
      recipeId: 4,
      amount: 30,
      name: "Onion",
      image_url: "https://cdn-icons-png.flaticon.com/512/1054/1054131.png",
      unit: "g."),
  const UsageIngredient(
      id: 31,
      ingredientId: 29,
      recipeId: 4,
      amount: 1,
      name: "Pasley",
      image_url: "https://cdn-icons-png.flaticon.com/128/1407/1407861.png",
      unit: "g."),
  const UsageIngredient(
      id: 32,
      ingredientId: 30,
      recipeId: 4,
      amount: 500,
      name: "Whipped cream",
      image_url: "https://cdn-icons-png.flaticon.com/512/5816/5816089.png",
      unit: "ml."),
  const UsageIngredient(
      id: 33,
      ingredientId: 31,
      recipeId: 4,
      amount: 16,
      name: "Pamesan cheese",
      image_url:
          "https://cdn.iconscout.com/icon/free/png-256/cheese-1806482-1534540.png",
      unit: "g."),
  const UsageIngredient(
      id: 34,
      ingredientId: 32,
      recipeId: 4,
      amount: 2,
      name: "Salt",
      image_url: "https://cdn-icons-png.flaticon.com/512/736/736923.png",
      unit: "g."),
  const UsageIngredient(
      id: 35,
      ingredientId: 26,
      recipeId: 4,
      amount: 1,
      name: "pepper",
      image_url: "https://cdn-icons-png.flaticon.com/512/4212/4212858.png",
      unit: "g."),
  const UsageIngredient(
      id: 36,
      ingredientId: 12,
      recipeId: 4,
      amount: 1,
      name: "Egg",
      image_url: "https://cdn-icons-png.flaticon.com/512/837/837611.png",
      unit: "piece"),
  const UsageIngredient(
      id: 37,
      ingredientId: 33,
      recipeId: 5,
      amount: 1000,
      name: "Tilapia",
      image_url: "https://cdn-icons-png.flaticon.com/512/3751/3751261.png",
      unit: "g."),
  const UsageIngredient(
      id: 38,
      ingredientId: 34,
      recipeId: 5,
      amount: 40,
      name: "Galangal",
      image_url:
          "https://thumbs.dreamstime.com/b/icon-fresh-ginger-root-two-green-leaves-natural-food-organic-product-cooking-ingredient-healthy-nutrition-colorful-vector-136856333.jpg",
      unit: "g."),
  const UsageIngredient(
      id: 39,
      ingredientId: 35,
      recipeId: 5,
      amount: 40,
      name: "Lemongrass",
      image_url: "https://cdn-icons-png.flaticon.com/512/1087/1087451.png",
      unit: "g."),
  const UsageIngredient(
      id: 40,
      ingredientId: 36,
      recipeId: 5,
      amount: 40,
      name: "Shallot",
      image_url: "https://cdn-icons-png.flaticon.com/512/5019/5019700.png",
      unit: "g."),
  const UsageIngredient(
      id: 41,
      ingredientId: 37,
      recipeId: 5,
      amount: 15,
      name: "Garlic",
      image_url: "https://cdn-icons-png.flaticon.com/512/4139/4139325.png",
      unit: "g."),
  const UsageIngredient(
      id: 42,
      ingredientId: 19,
      recipeId: 5,
      amount: 100,
      name: "Tomato",
      image_url: "https://cdn-icons-png.flaticon.com/512/1202/1202125.png",
      unit: "g."),
  const UsageIngredient(
      id: 43,
      ingredientId: 2,
      recipeId: 5,
      amount: 2,
      name: "Kaffir lime leaf",
      image_url:
          "https://img.favpng.com/10/3/5/kaffir-lime-lemon-thai-cuisine-leaf-food-png-favpng-ja47zkb6ZANwrC1whHrw4cs8H.jpg",
      unit: "g."),
  const UsageIngredient(
      id: 44,
      ingredientId: 38,
      recipeId: 5,
      amount: 10,
      name: "Cilantro",
      image_url:
          "https://thumbs.dreamstime.com/b/cilantro-doodle-icon-vector-illustration-color-186148423.jpg",
      unit: "g."),
  const UsageIngredient(
      id: 45,
      ingredientId: 39,
      recipeId: 5,
      amount: 10,
      name: "Spring onion",
      image_url: "https://cdn-icons-png.flaticon.com/512/4139/4139319.png",
      unit: "g."),
  const UsageIngredient(
      id: 46,
      ingredientId: 40,
      recipeId: 5,
      amount: 2,
      name: "Holy basil",
      image_url: "https://cdn-icons-png.flaticon.com/512/1135/1135508.png",
      unit: "g."),
  const UsageIngredient(
      id: 47,
      ingredientId: 41,
      recipeId: 5,
      amount: 10,
      name: "Dried chili",
      image_url:
          "http://assets.stickpng.com/thumbs/585ea761cb11b227491c3534.png",
      unit: "g."),
  const UsageIngredient(
      id: 48,
      ingredientId: 42,
      recipeId: 5,
      amount: 20,
      name: "Guinea-pepper",
      image_url: "https://cdn-icons-png.flaticon.com/512/433/433671.png",
      unit: "g."),
  const UsageIngredient(
      id: 49,
      ingredientId: 7,
      recipeId: 5,
      amount: 90,
      name: "Fish sauce",
      image_url:
          "https://cdn.icon-icons.com/icons2/2032/PNG/512/fish_sauce_icon_124114.png",
      unit: "ml."),
  const UsageIngredient(
      id: 50,
      ingredientId: 43,
      recipeId: 5,
      amount: 70,
      name: "Tamarind juice",
      image_url: "https://cdn-icons-png.flaticon.com/512/4139/4139345.png",
      unit: "ml."),
  const UsageIngredient(
      id: 51,
      ingredientId: 44,
      recipeId: 5,
      amount: 60,
      name: "Lime juice",
      image_url: "https://cdn-icons-png.flaticon.com/512/765/765614.png",
      unit: "ml."),
  const UsageIngredient(
      id: 52,
      ingredientId: 45,
      recipeId: 6,
      amount: 1000,
      name: "Winter melon",
      image_url:
          "https://www.pngplay.com/wp-content/uploads/10/Winter-Melon-PNG-Clipart-Background.png",
      unit: "g."),
  const UsageIngredient(
      id: 53,
      ingredientId: 46,
      recipeId: 6,
      amount: 500,
      name: "Pork spare rib",
      image_url: "https://cdn-icons-png.flaticon.com/512/1582/1582225.png",
      unit: "g."),
  const UsageIngredient(
      id: 54,
      ingredientId: 47,
      recipeId: 6,
      amount: 100,
      name: "Shitake mushroom",
      image_url: "https://cdn-icons-png.flaticon.com/512/1134/1134449.png",
      unit: "g."),
  const UsageIngredient(
      id: 55,
      ingredientId: 48,
      recipeId: 6,
      amount: 1,
      name: "Picked lime",
      image_url:
          "https://cdn.happyfresh.com/t/s_large,c_fit/spree/images/attachments/b1bfddb4c20331aad6a8d788551f99f7f10c255f-original.jpg",
      unit: "piece"),
  const UsageIngredient(
      id: 56,
      ingredientId: 37,
      recipeId: 6,
      amount: 20,
      name: "Garlic",
      image_url: "https://cdn-icons-png.flaticon.com/512/4139/4139325.png",
      unit: "g."),
  const UsageIngredient(
      id: 57,
      ingredientId: 21,
      recipeId: 6,
      amount: 15,
      name: "Coriander",
      image_url: "https://cdn-icons-png.flaticon.com/128/5346/5346193.png",
      unit: "g."),
  const UsageIngredient(
      id: 58,
      ingredientId: 26,
      recipeId: 6,
      amount: 4,
      name: "pepper",
      image_url: "https://cdn-icons-png.flaticon.com/512/4212/4212858.png",
      unit: "g."),
  const UsageIngredient(
      id: 59,
      ingredientId: 32,
      recipeId: 6,
      amount: 8,
      name: "Salt",
      image_url: "https://cdn-icons-png.flaticon.com/512/736/736923.png",
      unit: "g."),
  const UsageIngredient(
      id: 60,
      ingredientId: 25,
      recipeId: 6,
      amount: 90,
      name: "light soy sauce",
      image_url: "https://cdn-icons-png.flaticon.com/512/1471/1471433.png",
      unit: "ml."),
  const UsageIngredient(
      id: 61,
      ingredientId: 49,
      recipeId: 7,
      amount: 150,
      name: "Minced meat",
      image_url: "https://cdn-icons-png.flaticon.com/512/5222/5222914.png",
      unit: "g."),
  const UsageIngredient(
      id: 62,
      ingredientId: 40,
      recipeId: 7,
      amount: 10,
      name: "Holy basil",
      image_url: "https://cdn-icons-png.flaticon.com/512/1135/1135508.png",
      unit: "g."),
  const UsageIngredient(
      id: 63,
      ingredientId: 41,
      recipeId: 7,
      amount: 10,
      name: "Dried chili",
      image_url:
          "http://assets.stickpng.com/thumbs/585ea761cb11b227491c3534.png",
      unit: "g."),
  const UsageIngredient(
      id: 64,
      ingredientId: 37,
      recipeId: 7,
      amount: 20,
      name: "Garlic",
      image_url: "https://cdn-icons-png.flaticon.com/512/4139/4139325.png",
      unit: "g."),
  const UsageIngredient(
      id: 65,
      ingredientId: 7,
      recipeId: 7,
      amount: 40,
      name: "Fish sauce",
      image_url:
          "https://cdn.icon-icons.com/icons2/2032/PNG/512/fish_sauce_icon_124114.png",
      unit: "ml."),
  const UsageIngredient(
      id: 66,
      ingredientId: 23,
      recipeId: 7,
      amount: 20,
      name: "Oyster sauce",
      image_url: "https://cdn-icons-png.flaticon.com/512/3448/3448062.png",
      unit: "ml."),
  const UsageIngredient(
      id: 67,
      ingredientId: 24,
      recipeId: 7,
      amount: 9,
      name: "Sugar",
      image_url: "https://cdn-icons-png.flaticon.com/512/3093/3093536.png",
      unit: "g."),
  const UsageIngredient(
      id: 68,
      ingredientId: 26,
      recipeId: 7,
      amount: 1,
      name: "pepper",
      image_url: "https://cdn-icons-png.flaticon.com/512/4212/4212858.png",
      unit: "g."),
  const UsageIngredient(
      id: 69,
      ingredientId: 50,
      recipeId: 8,
      amount: 1000,
      name: "Chicken drumstick",
      image_url: "https://cdn-icons-png.flaticon.com/512/1699/1699371.png",
      unit: "g."),
  const UsageIngredient(
      id: 70,
      ingredientId: 51,
      recipeId: 8,
      amount: 300,
      name: "Potato",
      image_url: "https://cdn-icons-png.flaticon.com/512/765/765613.png",
      unit: "g."),
  const UsageIngredient(
      id: 71,
      ingredientId: 15,
      recipeId: 8,
      amount: 300,
      name: "Onion",
      image_url: "https://cdn-icons-png.flaticon.com/512/1054/1054131.png",
      unit: "g."),
  const UsageIngredient(
      id: 72,
      ingredientId: 5,
      recipeId: 8,
      amount: 600,
      name: "Thick coconut milk",
      image_url: "https://cdn-icons-png.flaticon.com/512/5015/5015374.png",
      unit: "ml."),
  const UsageIngredient(
      id: 73,
      ingredientId: 6,
      recipeId: 8,
      amount: 600,
      name: "Thin coconut milk",
      image_url: "https://cdn-icons-png.flaticon.com/512/5015/5015374.png",
      unit: "ml."),
  const UsageIngredient(
      id: 74,
      ingredientId: 52,
      recipeId: 8,
      amount: 10,
      name: "Cardamom",
      image_url: "https://cdn-icons-png.flaticon.com/512/4788/4788099.png",
      unit: "g."),
  const UsageIngredient(
      id: 75,
      ingredientId: 53,
      recipeId: 8,
      amount: 2,
      name: "Bay leaf",
      image_url:
          "https://e7.pngegg.com/pngimages/954/542/png-clipart-west-indies-bay-leaf-pimenta-racemosa-oil-bay-rum-bay-leaves-miscellaneous-leaf-vegetable.png",
      unit: "g."),
  const UsageIngredient(
      id: 76,
      ingredientId: 54,
      recipeId: 8,
      amount: 50,
      name: "Peanut",
      image_url: "https://cdn-icons-png.flaticon.com/512/1728/1728767.png",
      unit: "g."),
  const UsageIngredient(
      id: 77,
      ingredientId: 55,
      recipeId: 8,
      amount: 150,
      name: "Massaman curry paste",
      image_url: "https://www.thaiagri.com/images/Product/1560407967.png",
      unit: "g."),
  const UsageIngredient(
      id: 78,
      ingredientId: 43,
      recipeId: 8,
      amount: 80,
      name: "Tamarind juice",
      image_url: "https://cdn-icons-png.flaticon.com/512/4139/4139345.png",
      unit: "ml."),
  const UsageIngredient(
      id: 79,
      ingredientId: 8,
      recipeId: 8,
      amount: 60,
      name: "Palm sugar",
      image_url: "https://cdn-icons-png.flaticon.com/512/5137/5137061.png",
      unit: "g."),
  const UsageIngredient(
      id: 80,
      ingredientId: 7,
      recipeId: 8,
      amount: 110,
      name: "Fish sauce",
      image_url:
          "https://cdn.icon-icons.com/icons2/2032/PNG/512/fish_sauce_icon_124114.png",
      unit: "ml."),
  const UsageIngredient(
      id: 81,
      ingredientId: 56,
      recipeId: 9,
      amount: 3,
      name: "Shrimp",
      image_url: "https://cdn-icons-png.flaticon.com/512/1691/1691147.png",
      unit: "g."),
  const UsageIngredient(
      id: 82,
      ingredientId: 12,
      recipeId: 9,
      amount: 3,
      name: "Egg",
      image_url: "https://cdn-icons-png.flaticon.com/512/837/837611.png",
      unit: "piece"),
  const UsageIngredient(
      id: 83,
      ingredientId: 16,
      recipeId: 9,
      amount: 100,
      name: "Carrot",
      image_url: "https://cdn-icons-png.flaticon.com/512/883/883760.png",
      unit: "g."),
  const UsageIngredient(
      id: 84,
      ingredientId: 37,
      recipeId: 9,
      amount: 100,
      name: "Garlic",
      image_url: "https://cdn-icons-png.flaticon.com/512/4139/4139325.png",
      unit: "g."),
  const UsageIngredient(
      id: 85,
      ingredientId: 39,
      recipeId: 9,
      amount: 10,
      name: "Spring onion",
      image_url: "https://cdn-icons-png.flaticon.com/512/4139/4139319.png",
      unit: "g."),
  const UsageIngredient(
      id: 86,
      ingredientId: 57,
      recipeId: 9,
      amount: 40,
      name: "Seasoning soy saurce",
      image_url: "https://cdn-icons-png.flaticon.com/512/1471/1471433.png",
      unit: "ml."),
  const UsageIngredient(
      id: 87,
      ingredientId: 24,
      recipeId: 9,
      amount: 10,
      name: "Sugar",
      image_url: "https://cdn-icons-png.flaticon.com/512/3093/3093536.png",
      unit: "g."),
  const UsageIngredient(
      id: 88,
      ingredientId: 26,
      recipeId: 9,
      amount: 10,
      name: "pepper",
      image_url: "https://cdn-icons-png.flaticon.com/512/4212/4212858.png",
      unit: "g."),
  const UsageIngredient(
      id: 89,
      ingredientId: 58,
      recipeId: 10,
      amount: 600,
      name: "Pork belly",
      image_url: "https://cdn-icons-png.flaticon.com/512/1699/1699369.png",
      unit: "g."),
  const UsageIngredient(
      id: 90,
      ingredientId: 37,
      recipeId: 10,
      amount: 50,
      name: "Garlic",
      image_url: "https://cdn-icons-png.flaticon.com/512/4139/4139325.png",
      unit: "g."),
  const UsageIngredient(
      id: 91,
      ingredientId: 3,
      recipeId: 10,
      amount: 30,
      name: "Red pepper",
      image_url: "https://cdn-icons-png.flaticon.com/512/1868/1868925.png",
      unit: "g."),
  const UsageIngredient(
      id: 92,
      ingredientId: 20,
      recipeId: 10,
      amount: 30,
      name: "Scallion",
      image_url: "https://cdn-icons-png.flaticon.com/512/680/680945.png",
      unit: "g."),
  const UsageIngredient(
      id: 93,
      ingredientId: 32,
      recipeId: 10,
      amount: 12,
      name: "Salt",
      image_url: "https://cdn-icons-png.flaticon.com/512/736/736923.png",
      unit: "g."),
  const UsageIngredient(
      id: 94,
      ingredientId: 24,
      recipeId: 10,
      amount: 20,
      name: "Sugar",
      image_url: "https://cdn-icons-png.flaticon.com/512/3093/3093536.png",
      unit: "g."),
  const UsageIngredient(
      id: 95,
      ingredientId: 26,
      recipeId: 10,
      amount: 2,
      name: "pepper",
      image_url: "https://cdn-icons-png.flaticon.com/512/4212/4212858.png",
      unit: "g."),
  const UsageIngredient(
      id: 96,
      ingredientId: 59,
      recipeId: 11,
      amount: 300,
      name: "Squid",
      image_url: "https://cdn-icons-png.flaticon.com/512/616/616661.png",
      unit: "g."),
  const UsageIngredient(
      id: 97,
      ingredientId: 60,
      recipeId: 11,
      amount: 30,
      name: "Cabbage",
      image_url: "https://cdn-icons-png.flaticon.com/128/1453/1453048.png",
      unit: "g."),
  const UsageIngredient(
      id: 98,
      ingredientId: 61,
      recipeId: 11,
      amount: 10,
      name: "Celery",
      image_url: "https://cdn-icons-png.flaticon.com/512/1581/1581804.png",
      unit: "g."),
  const UsageIngredient(
      id: 99,
      ingredientId: 21,
      recipeId: 11,
      amount: 10,
      name: "Coriander",
      image_url: "https://cdn-icons-png.flaticon.com/128/5346/5346193.png",
      unit: "g."),
  const UsageIngredient(
      id: 100,
      ingredientId: 42,
      recipeId: 11,
      amount: 15,
      name: "Guinea-pepper",
      image_url: "https://cdn-icons-png.flaticon.com/512/433/433671.png",
      unit: "g."),
  const UsageIngredient(
      id: 101,
      ingredientId: 37,
      recipeId: 11,
      amount: 20,
      name: "Garlic",
      image_url: "https://cdn-icons-png.flaticon.com/512/4139/4139325.png",
      unit: "g."),
  const UsageIngredient(
      id: 102,
      ingredientId: 44,
      recipeId: 11,
      amount: 55,
      name: "Lime juice",
      image_url: "https://cdn-icons-png.flaticon.com/512/765/765614.png",
      unit: "ml."),
  const UsageIngredient(
      id: 103,
      ingredientId: 7,
      recipeId: 11,
      amount: 55,
      name: "Fish sauce",
      image_url:
          "https://cdn.icon-icons.com/icons2/2032/PNG/512/fish_sauce_icon_124114.png",
      unit: "ml."),
  const UsageIngredient(
      id: 104,
      ingredientId: 8,
      recipeId: 11,
      amount: 5,
      name: "Palm sugar",
      image_url: "https://cdn-icons-png.flaticon.com/512/5137/5137061.png",
      unit: "g."),
  const UsageIngredient(
      id: 105,
      ingredientId: 62,
      recipeId: 12,
      amount: 500,
      name: "Chicken wing",
      image_url: "https://cdn-icons-png.flaticon.com/512/933/933245.png",
      unit: "g."),
  const UsageIngredient(
      id: 106,
      ingredientId: 7,
      recipeId: 12,
      amount: 20,
      name: "Fish sauce",
      image_url:
          "https://cdn.icon-icons.com/icons2/2032/PNG/512/fish_sauce_icon_124114.png",
      unit: "ml."),
  const UsageIngredient(
      id: 107,
      ingredientId: 24,
      recipeId: 12,
      amount: 8,
      name: "Sugar",
      image_url: "https://cdn-icons-png.flaticon.com/512/3093/3093536.png",
      unit: "g."),
  const UsageIngredient(
      id: 108,
      ingredientId: 26,
      recipeId: 12,
      amount: 2,
      name: "pepper",
      image_url: "https://cdn-icons-png.flaticon.com/512/4212/4212858.png",
      unit: "g."),
  const UsageIngredient(
      id: 109,
      ingredientId: 63,
      recipeId: 12,
      amount: 27,
      name: "Tempura flour",
      image_url: "https://cdn-icons-png.flaticon.com/512/2743/2743000.png",
      unit: "g."),
  const UsageIngredient(
      id: 110,
      ingredientId: 12,
      recipeId: 13,
      amount: 3,
      name: "Egg",
      image_url: "https://cdn-icons-png.flaticon.com/512/837/837611.png",
      unit: "piece"),
  const UsageIngredient(
      id: 111,
      ingredientId: 64,
      recipeId: 13,
      amount: 20,
      name: "Wakame seaweed",
      image_url: "https://cdn-icons-png.flaticon.com/512/791/791597.png",
      unit: "g."),
  const UsageIngredient(
      id: 112,
      ingredientId: 65,
      recipeId: 13,
      amount: 100,
      name: "Soft tofu",
      image_url: "https://cdn-icons-png.flaticon.com/512/811/811462.png",
      unit: "g."),
  const UsageIngredient(
      id: 113,
      ingredientId: 66,
      recipeId: 13,
      amount: 30,
      name: "Japanese buching onion",
      image_url:
          "https://thumbs.dreamstime.com/b/japanese-bunching-onion-welsh-67711373.jpg",
      unit: "g."),
  const UsageIngredient(
      id: 114,
      ingredientId: 67,
      recipeId: 13,
      amount: 100,
      name: "Yosename soup",
      image_url: "https://cdn-icons-png.flaticon.com/512/4968/4968974.png",
      unit: "ml."),
  const UsageIngredient(
      id: 115,
      ingredientId: 12,
      recipeId: 14,
      amount: 4,
      name: "Egg",
      image_url: "https://cdn-icons-png.flaticon.com/512/837/837611.png",
      unit: "piece"),
  const UsageIngredient(
      id: 116,
      ingredientId: 68,
      recipeId: 14,
      amount: 400,
      name: "Milk",
      image_url: "https://cdn-icons-png.flaticon.com/512/684/684631.png",
      unit: "ml."),
  const UsageIngredient(
      id: 117,
      ingredientId: 56,
      recipeId: 14,
      amount: 100,
      name: "Shrimp",
      image_url: "https://cdn-icons-png.flaticon.com/512/1691/1691147.png",
      unit: "g."),
  const UsageIngredient(
      id: 118,
      ingredientId: 25,
      recipeId: 14,
      amount: 40,
      name: "light soy sauce",
      image_url: "https://cdn-icons-png.flaticon.com/512/1471/1471433.png",
      unit: "ml."),
  const UsageIngredient(
      id: 119,
      ingredientId: 16,
      recipeId: 14,
      amount: 15,
      name: "Carrot",
      image_url: "https://cdn-icons-png.flaticon.com/512/883/883760.png",
      unit: "g."),
  const UsageIngredient(
      id: 120,
      ingredientId: 39,
      recipeId: 14,
      amount: 15,
      name: "Spring onion",
      image_url: "https://cdn-icons-png.flaticon.com/512/4139/4139319.png",
      unit: "g."),
  const UsageIngredient(
      id: 121,
      ingredientId: 12,
      recipeId: 15,
      amount: 5,
      name: "Egg",
      image_url: "https://cdn-icons-png.flaticon.com/512/837/837611.png",
      unit: "piece"),
  const UsageIngredient(
      id: 122,
      ingredientId: 58,
      recipeId: 15,
      amount: 600,
      name: "Pork belly",
      image_url: "https://cdn-icons-png.flaticon.com/512/1699/1699369.png",
      unit: "g."),
  const UsageIngredient(
      id: 123,
      ingredientId: 65,
      recipeId: 15,
      amount: 200,
      name: "Soft tofu",
      image_url: "https://cdn-icons-png.flaticon.com/512/811/811462.png",
      unit: "g."),
  const UsageIngredient(
      id: 124,
      ingredientId: 37,
      recipeId: 15,
      amount: 80,
      name: "Garlic",
      image_url: "https://cdn-icons-png.flaticon.com/512/4139/4139325.png",
      unit: "g."),
  const UsageIngredient(
      id: 125,
      ingredientId: 21,
      recipeId: 15,
      amount: 10,
      name: "Coriander",
      image_url: "https://cdn-icons-png.flaticon.com/128/5346/5346193.png",
      unit: "g."),
  const UsageIngredient(
      id: 126,
      ingredientId: 26,
      recipeId: 15,
      amount: 7,
      name: "pepper",
      image_url: "https://cdn-icons-png.flaticon.com/512/4212/4212858.png",
      unit: "g."),
  const UsageIngredient(
      id: 127,
      ingredientId: 32,
      recipeId: 15,
      amount: 7,
      name: "Salt",
      image_url: "https://cdn-icons-png.flaticon.com/512/736/736923.png",
      unit: "g."),
  const UsageIngredient(
      id: 128,
      ingredientId: 8,
      recipeId: 15,
      amount: 65,
      name: "Palm sugar",
      image_url: "https://cdn-icons-png.flaticon.com/512/5137/5137061.png",
      unit: "g."),
  const UsageIngredient(
      id: 129,
      ingredientId: 7,
      recipeId: 15,
      amount: 120,
      name: "Fish sauce",
      image_url:
          "https://cdn.icon-icons.com/icons2/2032/PNG/512/fish_sauce_icon_124114.png",
      unit: "ml.")
];

// Return the usage ingredients list to other widgets
List<UsageIngredient> getUsageIngredient() {
  return usageIngredients;
}
