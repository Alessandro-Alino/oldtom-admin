import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class ManageModal extends StatelessWidget {
  const ManageModal({
    super.key,
    required this.title,
    required this.body,
    required this.actions,
  });

  final String title;
  final Widget body;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(32.0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.teal.shade900,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title & Close Button
          Container(
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              spacing: 16.0,
              children: [
                // Close Button
                IconButton.filledTonal(
                  onPressed: () {
                    context.router.pop();
                  },
                  icon: Icon(Icons.close),
                ),
                // Title
                Flexible(
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              ],
            ),
          ),
          // Main content
          Expanded(child: body),
          const Divider(),
          // Submit Button
          Row(
            spacing: 8.0,
            mainAxisAlignment: MainAxisAlignment.end,
            children: actions,
          ),
        ],
      ),
    );
  }
}
