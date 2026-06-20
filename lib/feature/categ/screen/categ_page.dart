import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oldtom_admin/config/helpers/helpers.dart';
import 'package:oldtom_admin/feature/categ/bloc/categ_bloc.dart';
import 'package:oldtom_admin/feature/categ/model/categ_model.dart';
import 'package:oldtom_admin/feature/categ/widget/manage_categ.dart';
import 'package:oldtom_admin/feature/categ/widget/cocktail_example.dart';
import 'package:oldtom_admin/widget/app_loading.dart';
import 'package:oldtom_admin/widget/base_page.dart';
import 'package:oldtom_admin/config/helpers/extensions.dart';

@RoutePage()
class CategPage extends StatelessWidget {
  const CategPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: Text(context.ltr.category(2)),
      body: Scaffold(
        backgroundColor: Colors.transparent,
        body: CustomScrollView(
          slivers: [
            // Button Status
            SliverToBoxAdapter(
              child: Container(
                height: 60.0,
                padding: const EdgeInsets.only(right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    BlocBuilder<CategBloc, CategState>(
                      builder: (context, state) {
                        return ActionChip(
                          onPressed: () {
                            context.read<CategBloc>().readCategs();
                          },
                          avatar: SizedBox.square(
                            dimension: 25.0,
                            child: switch (state.status) {
                              CategStatus.init => const Icon(
                                Icons.play_arrow_rounded,
                              ),
                              CategStatus.loading => const AppLoading(),
                              CategStatus.success => const Icon(
                                Icons.check_circle,
                                color: Colors.green,
                              ),
                              CategStatus.error => const Icon(
                                Icons.error_rounded,
                                color: Colors.amber,
                              ),
                            },
                          ),
                          label: const Text('GET CATEG'),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            // List of Document in Categories collection
            BlocBuilder<CategBloc, CategState>(
              builder: (context, state) {
                return state.categList.isEmpty
                    ? SliverFillRemaining(
                        child: Center(
                          child: Text(
                            'No Data.',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ),
                      )
                    : SliverList.builder(
                        itemCount: state.categList.length,
                        itemBuilder: (context, index) {
                          final CategModel categ = state.categList[index];
                          return CocktailExample(
                            categ: categ,
                            onTap: () {
                              // Show Modal to UPDATE Categ
                              Helpers.showGenericModal(
                                context: context,
                                builder: (context, scrollCntrl) {
                                  return ManageCateg(categ: categ);
                                },
                              );
                            },
                          );
                        },
                      );
              },
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Show Modal to CREATE Categ
            Helpers.showGenericModal(
              context: context,
              builder: (context, scrollCntrl) {
                return ManageCateg();
              },
            );
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
