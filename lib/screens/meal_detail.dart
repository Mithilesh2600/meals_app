import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';

class MealDetailScreen extends StatelessWidget {
  const MealDetailScreen({super.key, required this.meal});

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Image(
                image: NetworkImage(meal.imageUrl),
                fit: BoxFit.cover,
                height: 300,
                width: double.infinity,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Ingredients :",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              for (final x in meal.ingredients)
                Text(
                  x,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 10, color: Colors.white),
                ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Steps :",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              for (final x in meal.steps)
                Text(
                  x,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
