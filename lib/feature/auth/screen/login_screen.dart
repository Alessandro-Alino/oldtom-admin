import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oldtom_admin/config/helpers/extensions.dart';
import 'package:oldtom_admin/config/route/app_route.gr.dart';
import 'package:oldtom_admin/feature/auth/bloc/auth_bloc.dart';
import 'package:oldtom_admin/feature/auth/widget/custom_text_field.dart';
import 'package:oldtom_admin/widget/app_loading.dart';
import 'package:oldtom_admin/widget/snackbar/app_snackbar.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _userNameCntrl = TextEditingController();
  final TextEditingController _passwordCntrl = TextEditingController();

  @override
  void dispose() {
    if (_formKey.currentState != null) {
      _formKey.currentState!.dispose();
    }
    _userNameCntrl.dispose();
    _passwordCntrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          switch (state.status) {
            case AuthStatus.init:
              // If user is auth, go in Home-Page
              if (state.userStatus == UserStatus.authenticated &&
                  context.router.current.route.name == LoginRoute.name) {
                context.router.replaceAll([const HomeRoute()]);
              }
            // Show App-Mex
            case AuthStatus.error:
              if (state.appMex != null) {
                context.appSnackBar(appMex: state.appMex!);
              }
            case AuthStatus.success:
              context.router.replaceAll([const HomeRoute()]);
              break;
            case _:
              null;
          }
        },
        child: Center(
          child: Container(
            constraints: BoxConstraints(
              maxWidth: const int.fromEnvironment("maxWidth").toDouble(),
            ),
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                spacing: 8.0,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Username
                  CustomTextField(
                    controller: _userNameCntrl,
                    title: 'Username',
                    hintText: 'Insert username or e-mail',
                    validator: (e) {
                      if (e == null || e.isEmpty) {
                        return 'AO ENNAMO PERO\'';
                      }
                      return null;
                    },
                  ),
                  // Password
                  CustomTextField(
                    controller: _passwordCntrl,
                    title: 'Password',
                    hintText: 'Insert your Password',
                    obscureText: true,
                    validator: (e) {
                      if (e == null || e.isEmpty) {
                        return 'DAJE CHICCO EH';
                      }
                      return null;
                    },
                  ),
                  // Submit Button
                  Row(
                    spacing: 8.0,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ActionChip.elevated(
                        onPressed: () {
                          _userNameCntrl.text = 'test.email@gmail.com';
                          _passwordCntrl.text = 'Web21!';
                        },
                        label: const Text('Account Test'),
                      ),
                      BlocBuilder<AuthBloc, AuthState>(
                        builder: (context, state) {
                          final bool isLoading =
                              state.status == AuthStatus.loading;

                          return ActionChip.elevated(
                            onPressed: state.status == AuthStatus.loading
                                ? null
                                : () {
                                    // If Form is Valid, sign in with email and password
                                    if (_formKey.currentState != null &&
                                        _formKey.currentState!.validate()) {
                                      // Sign In
                                      context
                                          .read<AuthBloc>()
                                          .signInWithEmailAndPassword(
                                            email: _userNameCntrl.text,
                                            password: _passwordCntrl.text,
                                          );
                                    }
                                  },
                            avatar: isLoading
                                ? const AppLoading()
                                : Icon(Icons.login_outlined),
                            label: Text(context.ltr.login),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
