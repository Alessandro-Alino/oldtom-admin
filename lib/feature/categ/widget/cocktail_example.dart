import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oldtom_admin/feature/categ/bloc/categ_bloc.dart';
import 'package:oldtom_admin/feature/categ/model/categ_model.dart';
import 'package:oldtom_admin/widget/images/app_image.dart';
import 'package:oldtom_admin/widget/images/app_image_service.dart';

class CocktailExample extends StatelessWidget {
  const CocktailExample({super.key, required this.categ, required this.onTap});

  final CategModel categ;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Card Detail
          Card(
            clipBehavior: Clip.hardEdge,
            child: InkWell(
              onTap: onTap,
              child: Row(
                children: [
                  // Image
                  Container(
                    width: 120.0,
                    height: 120.0,
                    clipBehavior: Clip.none,
                  ),
                  // Title
                  Expanded(
                    child: ListTile(
                      title: Text(categ.name),
                      subtitle: Text(categ.description),
                    ),
                  ),
                  // Icon Button
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: IconButton.filledTonal(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateColor.resolveWith((e) {
                          return Colors.red;
                        }),
                      ),
                      onPressed: () {
                        if (categ.id != null) {
                          final String id = categ.id!;
                          if (id.isNotEmpty) {
                            context.read<CategBloc>().deleteCateg(id: id);
                          } else {
                            log('ID exist, but is Empty');
                          }
                        }
                      },
                      icon: Icon(Icons.delete),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Cocktail Image
          Positioned(
            top: -36.0,
            left: -8.0,
            child: AppImage(
              width: 150.0,
              height: 150.0,
              fit: BoxFit.contain,
              imageURL: AppImageService.getImageFromJSDelivr(categ.image),
            ),
          ),
        ],
      ),
    );
  }
}
