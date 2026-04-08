import 'package:flutter/material.dart';
import 'package:lab2/model/recipe_database/recipe_handler.dart';
import 'package:provider/provider.dart';




class TimeControl extends StatefulWidget {
  const TimeControl({super.key});

  @override
  State<TimeControl> createState() => _TimeControlState();
}

class _TimeControlState extends State<TimeControl> {
  double _price = 60;

  @override
  Widget build(BuildContext context) {
    var recipeHandler = Provider.of<RecipeHandler>(context, listen: false);
    return Column(
      children: [
        Slider(
          value: _price,
          min: 0,
          max: 150,
          divisions: 40,
          onChanged: (value) {
            setState(() {
              _price = value;
            });
            recipeHandler.setMaxTime(value.toInt());
          },
        ),
        Text('${_price.round()} min'),
      ],
    );
}
}