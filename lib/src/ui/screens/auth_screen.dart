import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authState = SupabaseAuth.instance.state;

    if (authState == AuthState.unauthenticated) {
      return LoginScreen();
    } else if (authState == AuthState.authenticated) {
      return HomeScreen();
    } else {
      return const CircularProgressIndicator();
    }
  }
}
