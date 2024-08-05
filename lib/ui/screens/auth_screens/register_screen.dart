import 'package:aytijobs/logic/blocs/auth/auth_bloc.dart';
import 'package:aytijobs/logic/blocs/auth/auth_state.dart';
import 'package:aytijobs/ui/screens/home_screen.dart';
import 'package:aytijobs/ui/widgets/auth_widgets/register_widget.dart';
import 'package:aytijobs/utils/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constantcolors.allBackgroundColor,
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is SuccessAuthState) {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (ctx) => const HomeScreen()),
              (route) => false,
            );
          } else if (state is ErrorAuthState) {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text("Registration Failed"),
                  content: Text(state.message),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text("Retry"),
                    ),
                  ],
                );
              },
            );
          } else {
            InitialAuthState();
          }
        },
        builder: (context, state) {
          if (state is LoadingAuthState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return const RegisterWidget();
        },
      ),
    );
  }
}
