import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallary_app/%20feauture/presentation/bloc/welcome_bloc/welcome_bloc.dart';
import 'package:gallary_app/%20feauture/presentation/screens/create_account_page/create_account_screen.dart';
import 'package:gallary_app/%20feauture/presentation/theme/fonts.dart';
import 'package:gallary_app/%20feauture/presentation/widgets/app_button.dart';

import '../have_account_page/have_account_page.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 132,
                ),
                Image.asset(
                  'assets/images/icon.png',
                  width: 92,
                  height: 96,
                ),
                const SizedBox(
                  height: 32,
                ),
                const Text(
                  'Welcome!',
                  style: AppFonts.w500s20,
                ),
                const SizedBox(
                  height: 60,
                ),
                BlocConsumer<WelcomeBloc, WelcomeState>(
                  listener: (context, state) {
                    if (state is CreateAccountState) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => const CreateAccount()),
                        ),
                      );
                    }
                  },
                  builder: (context, state) {
                    return AppButton(
                        func: () => BlocProvider.of<WelcomeBloc>(context)
                            .add(CreateAccountEvent()),
                        text: Text(
                          'Create an account',
                          style: AppFonts.w400s15.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        color: Colors.black);
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                BlocConsumer<WelcomeBloc, WelcomeState>(
                  listener: (context, state) {
                    if (state is HaveAccountState) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HaveAccount()),
                      );
                    }
                  },
                  builder: (context, state) {
                    return AppButton(
                        func: () {
                          BlocProvider.of<WelcomeBloc>(context)
                              .add(HaveAccountEvent());
                        },
                        text: const Text('I already have an account',
                            style: AppFonts.w400s15),
                        color: Colors.white);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
