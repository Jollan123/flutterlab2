import 'package:flutter/material.dart';
import 'package:lab2/widgets/difficulty_control.dart';
import 'package:lab2/widgets/ingredient_control.dart';
import 'package:lab2/widgets/kitchen_control.dart';
import 'package:lab2/widgets/price_control.dart';
import 'package:lab2/widgets/time_control.dart';

class ControlPanel extends StatelessWidget {
  const ControlPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 27, 177, 231),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Receptsök",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              "Hitta ett recept som passar genom att ändra inställningarna nedanför",
            ),

            const SizedBox(height: 24),

            const IngredientControl(),
            const SizedBox(height: 16),

            const KitchenControl(),
            const SizedBox(height: 16),

            const Text("Svårighetsgrad: "),
            const SizedBox(height: 8),
            const DifficultyControl(),

            const SizedBox(height: 16),

            const Text("Maxpris: "),
            const SizedBox(height: 8),
            const PriceControl(),

            const SizedBox(height: 16),


            const Text("Maxtid: "),
            const SizedBox(height: 8),
            const TimeControl(),
          ],
        ),
      ),
    );
  }
}