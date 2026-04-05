import 'package:flutter/material.dart';
import 'package:lab2/widgets/ingredient_control.dart';
import 'package:lab2/widgets/kitchen_control.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

@override
Widget build(BuildContext context) {
   return Scaffold(
     body: Row(children: [_controlPanel(context), _recipeArea(context)]),
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
      ],
    ),
  );
}

Widget _recipeArea(context) {
   return Expanded(
      child: Container(color: const Color.fromARGB(255, 122, 38, 58, )),
   );
}
}