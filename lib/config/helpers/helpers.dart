import 'package:flutter/material.dart';

class Helpers {
  // Image Extensions Allowed
  static final imageExtensions = [
    '.png',
    '.jpg',
    '.jpeg',
    '.gif',
    '.webp',
    '.bmp',
    '.svg',
    '.avif',
  ];
  // Show Generic Modal
  static void showGenericModal({
    required BuildContext context,
    required Widget Function(BuildContext, ScrollController) builder,
    VoidCallback? onClosed,
  }) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      constraints: BoxConstraints(
        minWidth: const int.fromEnvironment("maxWidth").toDouble(),
        maxWidth: const int.fromEnvironment("maxWidth").toDouble(),
      ),
      builder: (modalContext) {
        return DraggableScrollableSheet(
          maxChildSize: 1.0,
          initialChildSize: 1.0,
          builder: (context, scrollCntrl) {
            return builder(context, scrollCntrl);
          },
        );
      },
    ).then((_) {
      if (context.mounted) {
        if (onClosed != null) {
          onClosed();
        }
      }
    });
  }
}
