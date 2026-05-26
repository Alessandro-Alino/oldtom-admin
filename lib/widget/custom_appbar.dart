import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.title, this.actions = const []});

  final Widget title;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blueGrey.shade900,
          borderRadius: BorderRadius.circular(16.0),
        ),
        clipBehavior: Clip.hardEdge,
        padding: const EdgeInsets.all(4.0),
        margin: const EdgeInsets.all(4.0),
        constraints: BoxConstraints(
          maxWidth: const int.fromEnvironment("maxWidth").toDouble(),
        ),
        child: AppBar(
          backgroundColor: Colors.transparent,
          title: title,
          actions: actions,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
