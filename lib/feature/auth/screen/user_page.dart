import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oldtom_admin/feature/auth/bloc/auth_bloc.dart';
import 'package:oldtom_admin/widget/base_page.dart';

@RoutePage()
class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: const Text('User'),
      body: SingleChildScrollView(
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return Column(
              children: [
                Card(
                  child: Container(
                    height: 200.0,
                    width: double.infinity,
                    padding: const EdgeInsets.all(16.0),
                    child: Text(state.currentUser?.email ?? 'Error'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.logout_outlined),
                    title: const Text('Logout'),
                    onTap: () {
                      context.read<AuthBloc>().signOut();
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
