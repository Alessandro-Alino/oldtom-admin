import 'package:flutter/material.dart';
import 'package:oldtom_admin/widget/custom_appbar.dart';

class BasePage extends StatelessWidget {
  const BasePage({
    super.key,
    required this.title,
    this.actions = const [],
    required this.body,
    this.floatingActionButton,
  });

  final Widget title;
  final List<Widget>? actions;
  final Widget body;
  final Widget? floatingActionButton;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: const int.fromEnvironment("maxWidth").toDouble()),
          child: Scaffold(
            appBar: CustomAppBar(title: title, actions: actions),
            body: body,
            floatingActionButton: floatingActionButton,
          ),
        ),
      ),
    );
  }
}
