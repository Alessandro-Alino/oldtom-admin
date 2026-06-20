import 'package:flutter/material.dart';
import 'package:oldtom_admin/feature/categ/model/categ_model.dart';
import 'package:oldtom_admin/feature/prod/model/prod_model.dart';

class ProdCategList extends StatelessWidget {
  const ProdCategList({super.key, required this.prod});

  final ProdModel prod;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.0,
      child: prod.categories.isEmpty
          ? Chip(label: Text('No Categ.'))
          : ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: prod.categories.length,
              itemBuilder: (context, index) {
                final CategModel categ = prod.categories[index];
                return Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Chip(label: Text(categ.name)),
                );
              },
            ),
    );
  }
}
