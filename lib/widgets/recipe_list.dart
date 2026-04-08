import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:lab2/model/recipe_database/recipe_handler.dart';
import 'package:lab2/widgets/recipe_list_item.dart';


class RecipeList extends StatelessWidget {
  const RecipeList({super.key});

@override
Widget build(BuildContext context) {
  var recipeHandler = context.watch<RecipeHandler>();
  var recipes = recipeHandler.bestMatches;

  List<Widget> items = [];

  for (var recipe in recipes) {
    items.add(
      RecipeListItem(
        recipe,
        onTap: () {},
      ),
    );
  }

  return ListView(
    children: items,
  );
}
}