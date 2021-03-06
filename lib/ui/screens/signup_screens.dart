import '../../cubit/auth_cubit.dart';
import '../../ui/widgets/custom_button.dart';
import '../../ui/widgets/custom_tac_button.dart';
import '../../ui/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/theme.dart';

class SignUpScreens extends StatelessWidget {
  SignUpScreens({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController nameController = TextEditingController(text: '');
  final TextEditingController passwordController =
      TextEditingController(text: '');
  final TextEditingController hobbyController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    double heightOfScreens = MediaQuery.of(context).size.height;
    double widthOfScreens = MediaQuery.of(context).size.width;

    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 25),
        child: Text(
          'Join us and get\nyour next journey',
          style: blackTextStyle.copyWith(fontSize: 24, fontWeight: bold),
        ),
      );
    }

    Widget submitButton() {
      return BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is AuthSuccess) {
            Navigator.pushNamedAndRemoveUntil(
                context, '/bonus', (route) => false);
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
            title: 'Get Started',
            width: double.infinity,
            height: 55,
            onPressed: () {
              context.read<AuthCubit>().signUp(
                  email: emailController.text,
                  password: passwordController.text,
                  hobby: hobbyController.text,
                  name: nameController.text);
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
              fullnameInput(),
              emailInput(),
              passwordInput(),
              hobbyInput(),
              submitButton(),
              tacButton(context)
            ],
          ),
        ),
      );
    }

    //* BODY SCREENS SIGNUP
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

  Widget fullnameInput() {
    return CustomTextFormField(
      title: 'Fullname',
      hintText: 'Your Fullname',
      controller: nameController,
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

  Widget hobbyInput() {
    return CustomTextFormField(
      title: 'Hobby',
      hintText: 'Your Hobby',
      controller: hobbyController,
    );
  }

  Widget tacButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/sign-in');
      },
      child: CustomTacButton(
        text: 'Have an account? Sigin ',
        margin: EdgeInsets.only(top: 50, bottom: 70),
      ),
    );
  }
}
