import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:oldtom_admin/config/helpers/extensions.dart';
import 'package:oldtom_admin/widget/base_page.dart';
import 'package:oldtom_admin/config/route/app_route_const.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: Text(context.ltr.title_app),
      actions: [
        IconButton(
          onPressed: () {
            context.router.pushPath(AppRouteConst.userPage);
          },
          icon: Icon(Icons.person),
        ),
      ],
      body: Column(
        children: [
          // Categories
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              clipBehavior: Clip.hardEdge,
              child: ListTile(
                title: Text(context.ltr.category(2)),
                onTap: () {
                  context.router.pushPath(AppRouteConst.categPage);
                },
              ),
            ),
          ),
          // Products
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              clipBehavior: Clip.hardEdge,
              child: ListTile(
                title: Text(context.ltr.product(2)),
                onTap: () {
                  context.router.pushPath(AppRouteConst.prodPage);
                },
              ),
            ),
          ),
          // Git Images
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              clipBehavior: Clip.hardEdge,
              child: ListTile(
                title: Text(context.ltr.image(2)),
                onTap: () {
                  context.router.pushPath(AppRouteConst.imagePage);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
