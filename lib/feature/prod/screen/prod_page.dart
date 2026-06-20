import 'package:flutter/material.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oldtom_admin/feature/prod/bloc/prod_bloc.dart';
import 'package:oldtom_admin/feature/prod/model/prod_model.dart';
import 'package:oldtom_admin/feature/prod/widget/prod_categ_list.dart';
import 'package:oldtom_admin/feature/prod/widget/prod_ingredients.dart';
import 'package:oldtom_admin/widget/app_loading.dart';
import 'package:oldtom_admin/widget/base_page.dart';
import 'package:oldtom_admin/config/helpers/extensions.dart';
import 'package:oldtom_admin/widget/images/app_image.dart';
import 'package:oldtom_admin/widget/images/app_image_service.dart';

@RoutePage()
class ProdPage extends StatelessWidget {
  const ProdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: Text(context.ltr.product(2)),
      body: BlocBuilder<ProdBloc, ProdState>(
        builder: (context, state) {
          switch (state.status) {
            case ProdStatus.success:
              return Column(
                children: [
                  // Status
                  Container(
                    height: 60.0,
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ActionChip(
                          onPressed: () {
                            context.read<ProdBloc>().readProds();
                          },
                          avatar: SizedBox.square(
                            dimension: 25.0,
                            child: switch (state.status) {
                              ProdStatus.init => const Icon(
                                Icons.play_arrow_rounded,
                              ),
                              ProdStatus.loading => const AppLoading(),
                              ProdStatus.success => const Icon(
                                Icons.check_circle,
                                color: Colors.green,
                              ),
                              ProdStatus.error => const Icon(
                                Icons.error_rounded,
                                color: Colors.amber,
                              ),
                            },
                          ),
                          label: const Text('GET PRODS'),
                        ),
                      ],
                    ),
                  ),
                  // List
                  Expanded(
                    child: ListView.builder(
                      itemCount: state.prodList.length,
                      itemBuilder: (context, index) {
                        final ProdModel prod = state.prodList[index];
                        return Card(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Image, Content
                              Row(
                                spacing: 16.0,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Image
                                  Container(
                                    height: 100.0,
                                    width: 100.0,
                                    margin: const EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.amber,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: AppImage(
                                      fit: BoxFit.contain,
                                      imageURL: AppImageService.getImageFromCDN(
                                        path: prod.image,
                                      ),
                                    ),
                                  ),
                                  // Content
                                  Expanded(
                                    child: Column(
                                      spacing: 4.0,
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        // Name
                                        Text(
                                          prod.name,
                                          style: Theme.of(
                                            context,
                                          ).textTheme.titleMedium,
                                        ),
                                        // Description
                                        Text(prod.description),
                                        // Categories List
                                        ProdCategList(prod: prod),
                                        // Ingredients
                                        ProdIngredients(prod: prod),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              // Price
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade800,
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${prod.price} €'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            case _:
              return Center(
                child: InkWell(
                  onTap: () {
                    context.read<ProdBloc>().readProds();
                  },
                  child: Text(context.ltr.error),
                ),
              );
          }
        },
      ),
    );
  }
}
