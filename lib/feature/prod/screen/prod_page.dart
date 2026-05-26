import 'package:flutter/material.dart';
import 'package:auto_route/annotations.dart';
import 'package:oldtom_admin/widget/base_page.dart';
import 'package:oldtom_admin/config/helpers/extensions.dart';

@RoutePage()
class ProdPage extends StatelessWidget {
  const ProdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(title: Text(context.ltr.product(2)), body: Center());
  }
}
