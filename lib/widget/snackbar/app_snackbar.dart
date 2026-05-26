import 'package:flutter/material.dart';
import 'model/app_mex_model.dart';

extension BuildContextHelper on BuildContext {
  ScaffoldMessengerState appSnackBar({required AppMex appMex}) {
    final backgroundColor = switch (appMex.type) {
      MexType.info => Colors.blue.shade900,
      MexType.error => Colors.red.shade900,
      MexType.warning => Colors.amber.shade900,
      MexType.success => Colors.green.shade900,
    };
    final icon = switch (appMex.type) {
      MexType.info => Icons.info_outline,
      MexType.error => Icons.close,
      MexType.warning => Icons.warning_amber,
      MexType.success => Icons.check,
    };

    return ScaffoldMessenger.of(this)
      ..removeCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          width: 250.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          duration: const Duration(seconds: 2),
          behavior: SnackBarBehavior.floating,
          backgroundColor: backgroundColor,
          content: Row(
            spacing: 10.0,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Icon
              Icon(icon, color: Colors.white),
              // Content
              Flexible(
                child: Text(
                  appMex.mex,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      );
  }
}
