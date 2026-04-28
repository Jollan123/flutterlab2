// import 'package:flutter/material.dart';
// import 'package:lab2/widgets/ingredient_control.dart';
// import 'package:lab2/widgets/kitchen_control.dart';
// import 'package:lab2/widgets/difficulty_control.dart';
// import 'package:lab2/widgets/price_control.dart';
// import 'package:lab2/widgets/time_control.dart';
// import 'package:lab2/widgets/recipe_area.dart';

// class MainView extends StatelessWidget {
//   const MainView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Row(
//         children: [
//           Expanded(
//             flex: 1,
//             child: _controlPanel(context),
//           ),
//           const Expanded(
//             flex: 2,
//             child: RecipeArea(),
//           ),
//         ],
//       ),
//     );
//   }

// Widget _controlPanel(BuildContext context) {
//   return Container(
//     color: const Color.fromARGB(255, 27, 177, 231),
//     child: SingleChildScrollView(
//       padding: const EdgeInsets.all(16),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const Text(
//             "Receptsök",
//             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//           ),
//           const SizedBox(height: 8),
//           const Text(
//             "Hitta ett recept som passar genom att ändra inställningarna nedanför",
//           ),

//           const SizedBox(height: 24),

//           // ❗ INGA Rows här längre
//           const IngredientControl(),
//           const SizedBox(height: 16),

//           const KitchenControl(),
//           const SizedBox(height: 16),

//           const Text("Svårighetsgrad: "),
//           const SizedBox(height: 8),
//           const DifficultyControl(),

//           const SizedBox(height: 16),

//           const Text("Maxpris:"),
//           const PriceControl(),

//           const SizedBox(height: 16),

//           const Text("Maxtid: "),
//           const TimeControl(),
//         ],
//       ),
//     ),
//   );
// }
// }

import 'package:flutter/material.dart';
import 'package:lab2/pages/control_panel.dart';
import 'package:lab2/widgets/recipe_area.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: const [
          Expanded(
            flex: 1,
            child: ControlPanel(),
          ),
          Expanded(
            flex: 2,
            child: RecipeArea(),
          ),
        ],
      ),
    );
  }
}