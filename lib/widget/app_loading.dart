import 'package:flutter/material.dart';

class AppLoading extends StatelessWidget {
  const AppLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Center(child: CircularProgressIndicator.adaptive(
          strokeWidth: 0.5,
        )),
      ),
    );
  }
}
