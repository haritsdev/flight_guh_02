import '../../cubit/auth_cubit.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_tac_button.dart';
import '../widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/theme.dart';

class SignInScreens extends StatelessWidget {
  SignInScreens({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController passwordController =
      TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    double heightOfScreens = MediaQuery.of(context).size.height;
    double widthOfScreens = MediaQuery.of(context).size.width;

    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 25),
        child: Text(
          'Sign In With your\nexisting account',
          style: blackTextStyle.copyWith(fontSize: 24, fontWeight: bold),
        ),
      );
    }

    Widget submitButton() {
      return BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is AuthSuccess) {
            Navigator.pushNamedAndRemoveUntil(
                context, '/main', (route) => false);
          } else if (state is AuthFailed) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                backgroundColor: kRedColor, content: Text(state.error)));
          }
        },
        builder: (context, state) {
          if (state is AuthLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          return CustomButton(
            title: 'Sign in',
            width: double.infinity,
            height: 55,
            onPressed: () {
              context.read<AuthCubit>().signIn(
                    email: emailController.text,
                    password: passwordController.text,
                  );
            },
          );
        },
      );
    }

    Widget inputSection() {
      Widget emailInput() {
        return CustomTextFormField(
          title: 'Email Address',
          hintText: 'Your Email Address',
          controller: emailController,
        );
      }

      return Container(
        margin: EdgeInsets.only(top: 25),
        // width: widthOfScreens * 0.87,
        height: heightOfScreens * 0.73,
        padding: EdgeInsets.symmetric(
            horizontal: widthOfScreens * 0.02, vertical: 30),
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(defaultRadius)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              emailInput(),
              passwordInput(),
              submitButton(),
              tacButton(context)
            ],
          ),
        ),
      );
    }

    //* BODY SCREENS SignIn
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [title(), inputSection()],
        ),
      ),
    );
  }

  Widget passwordInput() {
    return CustomTextFormField(
      title: 'Password',
      hintText: 'Your Password',
      obsecureText: true,
      controller: passwordController,
    );
  }

  Widget tacButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: CustomTacButton(
        text: 'Dont have an account? Sign Up',
        margin: EdgeInsets.only(top: 50, bottom: 70),
      ),
    );
  }
}
