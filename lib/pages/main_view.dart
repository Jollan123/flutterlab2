import 'package:flutter/material.dart';
import 'package:lab2/widgets/ingredient_control.dart';
import 'package:lab2/widgets/kitchen_control.dart';
import 'package:lab2/widgets/difficulty_control.dart';
import 'package:lab2/widgets/price_control.dart';
import 'package:lab2/widgets/time_control.dart';
import 'package:lab2/widgets/recipe_area.dart';




class MainView extends StatelessWidget {
  const MainView({super.key});

@override
Widget build(BuildContext context) {
   return Scaffold(
     body: Row(children: [_controlPanel(context), 
     const RecipeArea(),]
   ),
   );
}


Widget _controlPanel(context, {double width = 320}) {
   return Container(
      width: width,
      color: const Color.fromARGB(255, 27, 177, 231),
      child: Column(
children: [
        Text("Receptsök"),
        Text("Hitta ett recept som passar genom att ändra inställningarna nedanför"),

        SizedBox(height: 16),

        Row(
          children: [
            Text("Ingrediens: "),
            SizedBox(width: 8),
            IngredientControl(),
          ],
        ),

        SizedBox(height: 16),
        Row(
          children: [
            Text("Kök: "),
            SizedBox(width: 8),
            KitchenControl(),
          ],
        ),
         SizedBox(height: 16),
        Column(children: [Text("Svårighetsgrad: ")]),

        Row(
          children: [
          SizedBox(width: 8),
          SizedBox(
          width: 200,
          child: DifficultyControl(),
        ),
          ],
        ),
        Column(
          children: [
          SizedBox(height: 16),
          Text("Maxpris:"),
          PriceControl()]),

          Column(
            children: [
              SizedBox(width: 8),
              Text("Maxtid: "),
               TimeControl(),
            ]
          )
  
        ],
    ),
  );
}
}