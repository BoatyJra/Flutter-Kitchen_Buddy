// ignore_for_file: slash_for_doc_comments

/**********************************************************************
 *
 *  recipe_list.dart
 * 
 *  This file provide the list of recipe that available in our app
 *  and return to use in other widgets
 * 
 *  Created by Boba Tea group, 30 Nov 2021 for CPE327 Term Project
 * 
 **********************************************************************/

import 'package:bobatea/model/recipe_model.dart';

// List of the recipe of our app
// id - ID of the recipes, starting from 1
// name - name of the recipes
// detail - detailed description of the recipes
//          containing the amount of ingredients and how to cook the recipe
// image_url - image from the network of the recipes
// link - youtube video ID to use it inside the app
List<Recipe> recipes = [
  const Recipe(
      id: 1,
      name: "Pork panang",
      detail:
          "Ingredients\n - 500 g. pork shoulder slice.\n - 5 g. kaffir lime leaf\n - 15 g. red pepper \n - 2 1/2 tbsp. Panang curry paste \n - 500 ml. thick coconut milk\n - 300 ml. thin coconut milk \n - 2 1/2 tbsp. fish sauce \n - 1 1/2 tbsp. palm sugar\n\nRecipe\nIngredient preparation.\n - Take out the red pepper seeds first.\n - Clean kaffir lime leaves then tear the stalk off and then slice it thoroughly. \n - Cut the pork shoulder to the popper piece.\nLet’s do it\n - Put some coconut milk in moderation then turn on the stove with medium heat until the coconut milk is oily.\n - Add more coconut milk then stir it to be oily again.\n - Add Panage curry paste.\n - Mix it together.\n - Add more coconut milk.\n - When it boils, add pork with more heat.\n - Stir-fly and mix it until the pork and curry paste mix well.\n - Can add more coconut milk if you want.\n- Add palm sugar and fish sauce then mix it together.\n - Use medium heat.\n - Add red pepper and kaffir lime live.\n - Turn off the stove then Enjoy!",
      image_url: "https://i.ytimg.com/vi/RW4SwzttLPc/mqdefault.jpg",
      link: "RW4SwzttLPc"),
  const Recipe(
      id: 2,
      name: "Pan egg toast ",
      detail:
          "Ingredients\n- Sliced Bread\n- Cheddar cheese\n- Bologna\n- Eggs\n- Salted Butter\n\nRecipe\n- Cut the cheese in half.\n- Cut Bologna in half.\n- Cut bread in half.\n - Beat an egg like omelet.\n - Turn on stove with medium-low heat.\n - Spread butter all over the pan.\n - Once the butter has melted, put an egg that we have Beaten in the pan.\n - Paste the bread down then turn it over make sure it coated by egg on both sides.\n - Fry it until it looks beautiful yellow then turn it around.\n - Fold the excess eggs into the bread \n - Add cheese and bologna.\n - Once the bread is look beautiful, turn it back and forth together.\n - Wait for cheese to heat up until melted away.\n - Enjoy!",
      image_url: "https://i.ytimg.com/vi/qMVBrxoUXjk/maxresdefault.jpg",
      link: "qMVBrxoUXjk"),
  const Recipe(
      id: 3,
      name: "Stuffed omelet",
      detail:
          "Ingredients\n - 3 eggs\n - 200 g. minced pork\n - 50 g. onion\n - 50 g. carrot\n - 50 g. baby corn\n - 30 g. asparagus\n - 50 g. tomato\n - 10 g. scallion\n - 5 g. coriander\n - 4 tbsp. ketchup\n - 2 1/2 tbsp. oyster sauce\n - 2/3 tbsp. light soy sauce\n - 1/2 tsp. pepper\n - 1/2 tbsp. sugar\n\nRecipe\n - Dice onion, carrot, baby corn, asparagus, tomato, scallion, and coriander.\n - turn on the stove then put cooking oil.\n - When the cooking oil is boiled put onion in the pan, fry it until it smells.\n - Add minced pork then fry it until pork close to ripe.\n - Add carrot and baby corn.\n - Add ketchup, oyster sauce, light soy sauce, pepper and sugar then mix it together un till the pork ripe.\n - Add asparagus and tomato then mix it again.\n - When everything ripped, add scallion and coriander then mix it again.\n - Take it off the pan and turn off the stove.\n - Hit an egg like omelet add little light soy sauce.\n - Turn on the stove then put cooking oil.\n - Apply oil all over the pan.\n - Put an egg into the pan then apply it all over the pan.\n - Wait until egg turn to ripped then put pork that we cooked over the egg.\n - Fold the egg then take it onto the plate.\n - Enjoy!",
      image_url: "https://i.ytimg.com/vi/MP3ia7wajUU/maxresdefault.jpg",
      link: "MP3ia7wajUU"),
  const Recipe(
      id: 4,
      name: "Spaghetti Carbonara (Easy Way)",
      detail:
          "Ingredients\n - 50 g. spaghetti [# 2]\n - 50 g. bacon\n - 30 g. onion\n - parsley\n - 500 ml. whipped cream\n - 2 1/2 tbsp. parmesan cheese\n - 1/8 tsp. salt\n - 1/8 tsp. pepper\n - 1 egg yolk\n \n Recipe\n - Boil water.\n - When water boiled add some salt then put spaghetti into pot boil it for 4 minutes.\n - Dice an onion.\n - After 4 minutes rest the spaghetti.\n - Open the stove, stir bacon with medium heat.\n - Add onion then fry it.\n - Add whipped cream and cheese until it creamy.\n - Add some salt and pepper.\n - Add spaghetti that we boiled already then mix it together.\n - Turn off the stove then add a yolk then mix it quickly.\n - Take it onto plate then top with parsley and pepper.\n - Enjoy! ",
      image_url: "https://i.ytimg.com/vi/eOCWd-Nd6j4/maxresdefault.jpg",
      link: "eOCWd-Nd6j4"),
  const Recipe(
      id: 5,
      name: "Tilapia Tom Yum",
      detail:
          "Ingredients\n - 1,000 g. tilapia\n - 40 g. galangal\n - 40 g. lemongrass\n - 40 g. shallots\n - 15 g. garlic\n - 100 g. tomato\n - 2 g. kaffir lime leaves\n - 10 g. cilantro\n - 10 g. spring onions\n - 2 g. holy basil leaves\n - 10 g. dried chili\n - 20 g. guinea-pepper\n - 5 tbsp. fish sauce\n - 4 tbsp. tamarind juice\n - 3 tbsp. lime juice\n - 900 g. water\n\n Recipe\n - Clean up the tilapia then rest.\n - Pound garlics and shallots.\n - Slice galangal, lemongrass, and tomato.\n - Cut cilantro and spring onion.\n - Take a branch of kaffir lime leaves of.\n - Open the stove then roast dried chili until it smells then rest it.\n - Boil the water.\n - Add garlic and shallots.\n - After 1 minute add tilapia.\n - Pound some of dried chili and guinea-pepper.\n - Add galangal, lemongrass, and tomato.\n - Add tamarind juice and fish sauce.\n - Add cilantro, spring onion, kaffir lime leaves, holy basil leaves and all chilies.\n - Turn off the stove then add lime juice.\n - Enjoy!",
      image_url: "https://i.ytimg.com/vi/7cZtI__ES_c/maxresdefault.jpg",
      link: "7cZtI__ES_c"),
  const Recipe(
      id: 6,
      name: "Winter melon and pickled lime soup with pork spare rib",
      detail:
          "Ingredients\n - 1 winter melon\n - 3,000 ml. water\n - 500 g. pork spare rib\n - 6 dried shiitake mushroom\n - 1 pickled lime\n - 2 tbsp. pickled lime juice\n - 20 g. garlic \n - 4 root of coriander\n - 1/2 tbsp. pepper\n - 1 tsp. salt\n - 5 tbsp. light soy sauce\n \n Recipe\n - Clean winter melon and take the peel and seed out then cut it to a proper piece.\n - Clean pork spare rib then chops it to a proper piece.\n - Clean shitake mushroom and rest in drinking water.\n - Pound pepper then add root of coriander and garlic and pound it thoroughly then reset it.\n - Boil pork with boiled water until it boils again. (Around 2 min.)\n - Boil water then add pork into it and try to take the date off.\n - Add shitake mushroom.\n - Boil them with medium-low heat and take the fat off (around 15-20min.).\n - Add pepper, root coriander and garlic pounded and winter melon with high heat.\n - When it boiled turn the heat down to medium and seasoning with salt and light soy sauce then mix it together.\n - Boil it around 30 min.\n - Take the fat off.\n - Add pickled lime then boil it around 10 min then take the pickled lime off.\n - Enjoy!",
      image_url: "https://i.ytimg.com/vi/PKgZvDYSzwE/maxresdefault.jpg",
      link: "PKgZvDYSzwE"),
  const Recipe(
      id: 7,
      name: "Thai basil minced beef",
      detail:
          "Ingredients\n - 150 g. minced meat\n - 10 g. holy basil\n - 10 g. dried chili\n - 20 g. garlic\n - 2 tsp. fish sauce\n - 1 tbsp. oyster sauce\n - 2/3 tsp. sugar\n - 1/8 tsp. pepper\n\nRecipe \n - Pound dried chili and garlic.\n - Stir dried chili and garlic pounded until it smells, and garlic turn to beautiful yellow.\n - Add minced beef stir-fry it until it ripped.\n - Seasoning with fish sauce, oyster sauce, sugar, and pepper.\n - Add holy basil.\n - Mix it together.\n - Enjoy!",
      image_url: "https://i.ytimg.com/vi/xbYGXTFr36E/maxresdefault.jpg",
      link: "xbYGXTFr36E"),
  const Recipe(
      id: 8,
      name: "Chicken Massaman Curry",
      detail:
          "Ingredients\n - 1,000 g. chicken drumsticks, thigh\n - 600 g. potato\n - 300 g. onion\n - 600 g. thick coconut milk\n - 600 g. thin coconut milk\n - 10 g. cardamom\n - 2 g. bay leaf\n - 50 g. roasted peanuts\n - 150 g. massaman curry paste\n - 4 tbsp. tamarind pulp\n - 5 tbsp. palm sugar\n - 6 tbsp. fish sauce\n\nRecipe\n - Cut onion and potato in a quite big piece.\n - Boil thick coconut milk with medium-low heat.\n - When it boiled stir to avoid it burned until float up then add more thick coconut milk then stir it.\n - When it boiled add massaman curry paste then stir it until it ripped and smells.\n - Season with palm sugar, tamarind pulp and fish sauce.\n - Add thick coconut milk.\n - When it boiled, add chicken, cardamom, bay leaf and thin coconut milk then boil them with high heat.\n - After 25 – 30 min. add potato and onion.\n - When it boiled use medium heat.\n - Boil until potato ripped.\n - Add roasted peanuts then boil it a few minutes.\n - Enjoy!",
      image_url: "https://i.ytimg.com/vi/n8Bdz-s53B0/maxresdefault.jpg",
      link: "n8Bdz-s53B0"),
  const Recipe(
      id: 9,
      name: "Shrimp Fried Rice.",
      detail:
          "Ingredients\n - 350 g. cooking rice\n - 350 g. shrimp\n - 3 eggs\n - 100 g. carrot\n - 30 g. garlic\n - 10 g. spring onions\n - 2 tbsp. seasoning soy sauce\n - 1/2 tsp. sugar\n - 1/2 tsp. pepper\n\nRecipe\n - Clean the shrimp and peel it then cut the back off.\n - Dice carrots.\n - mince garlics and spring onion.\n - Turn the stove and heat the pan first.\n - When the pan is hot, put some cooking oil in it.\n - Roll the oil all over the pan then add fresh shrimp, minced garlics.\n - Stir-fry it until it ripped 40% - 50%.\n - Add eggs then mix eggs to spread it out.\n - When the eggs begin to ripen, mix it with shrimp.\n - Add cooking rice then mix them together.\n - Add carrot then stir-fry and mix it together.\n - Season it with seasoning soy sauce, sugar, and pepper.\n - Add spring onion then stir it again.\n - Enjoy!",
      image_url: "https://i.ytimg.com/vi/P8fN9MIGvts/maxresdefault.jpg",
      link: "5HGBfuGjV0s"),
  const Recipe(
      id: 10,
      name: "Roasted Pork Belly with Chili and Salt",
      detail:
          "Ingredients\n - 600 g. pork belly\n - 50 g. garlic\n - 30 g. red chili pepper\n - 30 g. scallion\n - 2/3 tsp. salt\n - 1 tsp. sugar\n - 1/4 tsp. pepper\n\nRecipe\n - Cut scallion thoroughly.\n - Mince garlic and red chili pepper.\n - Turn on stove then fry pork belly with medium-low heat.\n - After 7-8 min. flip pork then let it rip around 60%-70%.\n - Dice pork belly to a proper piece then stirs them until ripped.\n - Turn off stove then take the oil off.\n - Turn on stove with medium-high heat then add minced garlic and fries them until it smells.\n - Add red chili pepper fries them.\n - Add salt, sugar, and pepper then stir-fry it.\n - When all thinks mixed add scallion and mix it again.\n - Enjoy!",
      image_url: "https://i.ytimg.com/vi/nh4nzZza4yE/maxresdefault.jpg",
      link: "nh4nzZza4yE"),
  const Recipe(
      id: 11,
      name: "Squid in Thai lime soup",
      detail:
          "Ingredients\n - 300 g. squid\n - 30 g. cabbage\n - 10 g. celery\n - 10 g. coriander\n - 15 guinea-pepper\n - 20 g. garlic\n - 2 root of coriander\n - 3 1/2 tbsp. lime juice\n - 3 1/2 tbsp. fish sauce\n - 1/3 tbsp. palm sugar\n\nRecipe\n - Clean squid and take it’s mount and eyes off then pull it’s shell off then pull the ink bag that inside it off.\n - Cut squid’s back in stripes then rest it.\n - Cut root of coriander thoroughly.\n - Blend root of coriander, garlic, guinea-pepper, lime juice, fish sauce and palm sugar together.\n - Cut cabbage, coriander, and celery thoroughly then put them in the container.\n - Add squid.\n - pour some of lime juice that prepared.\n - Steam them around 5-7 min.\n - Add lime juice and topping with celery and coriander.\n - Enjoy.",
      image_url: "https://i.ytimg.com/vi/scyKlDpRe0Y/maxresdefault.jpg",
      link: "scyKlDpRe0Y"),
  const Recipe(
      id: 12,
      name: "Crispy Fried Chicken with Fish Sauce",
      detail:
          "Ingredients\n - 500 g. chicken middle wings\n - 1 tbsp. fish sauce\n - 1/2 tsp. sugar\n - 1/4 tsp. pepper\n - 3 tbsp. tempura flour\n - 1 tbsp. water\n\nRecipe\n - Clean the chicken.\n - Marinate chicken with fish sauce, sugar and pepper.\n - Poke the chicken all over by fork. \n - Add a little tempura flour and a little of water.\n - Heat the oil until it’s hot.\n - Bring the chicken to fry with medium-high heat.\n - When it begins turning to gold, flip its.\n - Fry until its ripped.\n - Enjoy!",
      image_url: "https://i.ytimg.com/vi/c7pIuGCADKo/maxresdefault.jpg",
      link: "c7pIuGCADKo"),
  const Recipe(
      id: 13,
      name: "Eggs Soup (Japanese Style)",
      detail:
          "Ingredients\n - 3 eggs\n - 20 g. wakame seaweed\n - 100 g. soft tofu\n - 30 g. Japanese bunching onion\n - 1,200 ml. water\n - 5 tbsp. Yosenabe Soup\n\nRecipe\n - Hit an egg like omelet.\n - Slice Japanese bunching onion thoroughly.\n - Dice soft tofu.\n - Boil a water.\n - When the water boiled add yosenabe Soup.\n - When the soup boiled, mix eggs then pour it into pot.\n - When eggs ripped add wakame seaweed and soft tofu then boil it.\n - When it boiled add Japanese bunching onion and mix its together until its boiled.\n - Enjoy!",
      image_url:
          "https://i.ytimg.com/vi/_AISb4fs7Q8/hqdefault.jpg?sqp=-oaymwEiCKgBEF5IWvKriqkDFQgBFQAAAAAYASUAAMhCPQCAokN4AQ==&rs=AOn4CLAUOoOANGbMjSR6oqsJ34jhwYiggg",
      link: "_AISb4fs7Q8"),
  const Recipe(
      id: 14,
      name: "Chinese steamed eggs with milk.",
      detail:
          "Ingredients\n - 4 eggs\n - 400 ml.” Dutch Mill Selected” \n - 100 g. shrimp\n - 2 tbsp. light soy sauce\n - Diced carrots, spring onions.\n\nRecipe\n - Blend milk, eggs, and light soy sauce together.\n - sieve them into bowl.\n - Add shrimp, diced carrot, and spring onions.\n - Stream with low heat around 15 min. (depend on size of bowl and heat).\n - After 10 min. topping with shrimp.\n - Continue streaming.\n - Enjoy!",
      image_url: "https://i.ytimg.com/vi/A1grv4j-O7o/maxresdefault.jpg",
      link: "A1grv4j-O7o"),
  const Recipe(
      id: 15,
      name: "Palo (Thai ancient way)",
      detail:
          "Ingredients\n - 5-10 Boiled eggs\n - 600 g. Pork belly\n - 200 g. Tofu fried\n - 20 garlic cloves\n  - 5 coriander root\n - 1 tbsp. Pepper\n  - 1/2 tsp. Salt\n - 5 tbsp. Palm sugar\n - 6-8 tbsp. fish sauce\n  - 1000 ml. Water\n - 1 tbsp. Black soy sauce (Optional) \n\nRecipe\n - Boil eggs with salt around 6 min then cool down it in cool water.\n - Peel eggs.\n - Clean pork belly then dice it into a quite big piece.\n - Pound garlic and salt thoroughly.\n - Add pepper and root of coriander then pound it again its call paste.\n - Stir-fried paste with cooking oil until it smells then rest it.\n - Simmer palm sugar with some of water until it looks dark but not burned.\n - Add paste and fish sauce then mix its together.\n - Add pork belly then stir-fried until it ripped.\n - Add water then boil around 10 min. with high heat.\n - When boiled down the heat to medium and try to take the bubble off.\n - When it’s out of bubble add eggs and tofu fried.\n - Try to take bubble and fat off.\n - Can add black soy sauce in this state.\n - Boil with low heat around 1hr.\n - Enjoy!",
      image_url: "https://i.ytimg.com/vi/e7firMQLbSA/maxresdefault.jpg",
      link: "e7firMQLbSA"),
];

// Return the recipes list to other widgets
List<Recipe> getRecipe() {
  return recipes;
}
