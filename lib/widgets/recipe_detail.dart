import 'package:flutter/material.dart';
import 'package:lab2/model/recipe_database/recipe.dart';
import 'package:provider/provider.dart';
import 'package:lab2/ui_controller.dart';

// class RecipeDetail extends StatelessWidget {
//   const RecipeDetail(this.recipe, {super.key});

//   final Recipe recipe;

//   @override
//   Widget build(BuildContext context) {
//     var uiController = Provider.of<UIController>(context, listen: false);

//     return IconButton(
//       icon: Icon(Icons.close),
//       onPressed: () {
//         uiController.deselectRecipe();
//       },
//     );
// }
// }
// class RecipeDetail extends StatelessWidget {
//   const RecipeDetail(this.recipe, {super.key});

//   final Recipe recipe;

//   @override
//   Widget build(BuildContext context) {
//     var uiController = Provider.of<UIController>(context, listen: false);

//     return Scaffold(
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [

//           IconButton(
//             icon: const Icon(Icons.close),
//             onPressed: () {
//               uiController.deselectRecipe();
//             },
//           ),

//           SizedBox(
//             height: 250,
//             width: double.infinity,
//             child: recipe.customImage(
//               width: double.infinity,
//               height: 250,
//               fit: BoxFit.cover,
//             ),
//           ),

//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Text(
//               recipe.name,
//               style: const TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
class RecipeDetail extends StatelessWidget {
  const RecipeDetail(this.recipe, {super.key});

  final Recipe recipe;

//   @override
//   Widget build(BuildContext context) {
//     var uiController = Provider.of<UIController>(context, listen: false);

//     return Scaffold(
//       // Vi använder en Row för att lägga saker sida vid sida
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.center, // Centrerar vertikalt
//           children: [
//             // 1. Bilden till vänster
//             SizedBox(
//               height: 150, // Justera storleken efter behov
//               width: 200,
//               child: recipe.customImage(
//                 fit: BoxFit.cover,
//               ),
//             ),

//             const SizedBox(width: 24), // Mellanrum mellan bild och text

//             // 2. Texten i mitten (Expanded gör att den tar upp resten av platsen)
//             Expanded(
//               child: Text(
//                 recipe.name,
//                 style: const TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//             ),

//             // 3. Stäng-knappen längst till höger
//             IconButton(
//               icon: const Icon(Icons.close),
//               onPressed: () {
//                 uiController.deselectRecipe();
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
@override
Widget build(BuildContext context) {
  var uiController = Provider.of<UIController>(context, listen: false);

  return Scaffold(
    // Center-widgeten ser till att innehållet hamnar i mitten av skärmen
    body: Center( 
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Row(
          // Centrerar elementen horisontellt inuti raden
          mainAxisAlignment: MainAxisAlignment.center, 
          // Centrerar elementen vertikalt inuti raden
          crossAxisAlignment: CrossAxisAlignment.center, 
          children: [
            // 1. Bilden
            SizedBox(
              height: 180,
              width: 240,
              child: ClipRRect( // Valfritt: ger runda hörn som på bilden
                borderRadius: BorderRadius.circular(8),
                child: recipe.customImage(fit: BoxFit.cover),
              ),
            ),

            const SizedBox(width: 30),

            // 2. Texten
            // Vi tar bort Expanded här om du vill att texten ska "krama" bilden 
            // istället för att ta upp hela bredden, det gör centreringen snyggare.
            Flexible( 
              child: Text(
                recipe.name,
                style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
              ),
            ),

            const SizedBox(width: 20),

            // 3. Stäng-knappen
            IconButton(
              icon: const Icon(Icons.close, size: 28),
              onPressed: () => uiController.deselectRecipe(),
            ),
          ],
        ),
      ),
    ),
  );
}
}