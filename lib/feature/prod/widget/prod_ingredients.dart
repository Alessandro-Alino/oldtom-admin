import 'package:flutter/material.dart';
import 'package:oldtom_admin/feature/prod/model/prod_model.dart';

class ProdIngredients extends StatelessWidget {
  const ProdIngredients({super.key, required this.prod});

  final ProdModel prod;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.only(right: 8.0, bottom: 8.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 2.0),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        spacing: 8.0,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ingredienti:',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
          // Grid-View Ingredients
          SizedBox(
            height: 140.0,
            child: GridView.builder(
              itemCount: prod.ingredients.length,
              padding: const EdgeInsets.only(right:16.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                childAspectRatio: 5 / 1,
              ),
              itemBuilder: (context, index) {
                final String ingredient = prod.ingredients[index];
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    spacing: 8.0,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Text(
                          '- $ingredient',
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
