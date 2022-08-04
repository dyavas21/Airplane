import 'package:app/cubit/auth_cubit.dart';
import 'package:app/shared/theme.dart';
import 'package:app/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  TextEditingController nameController = TextEditingController(text: '');
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');
  TextEditingController hobbyController = TextEditingController(text: '');
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(
          left: 24,
          bottom: 30,
        ),
        child: Text(
          'Join us and get\nyour next journey',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget input() {
      Widget fullName() {
        return TextFormField(
          controller: nameController,
          cursorColor: kBlackColor,
          decoration: InputDecoration(
            hintText: 'Your full name',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(defaultRadius),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(defaultRadius),
              borderSide: BorderSide(
                color: kPrimaryColor,
              ),
            ),
          ),
        );
      }

      Widget emailAddress() {
        return TextFormField(
          controller: emailController,
          cursorColor: kBlackColor,
          decoration: InputDecoration(
            hintText: 'Your email address',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(defaultRadius),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(defaultRadius),
              borderSide: BorderSide(
                color: kPrimaryColor,
              ),
            ),
          ),
        );
      }

      Widget password() {
        return TextFormField(
          controller: passwordController,
          obscureText: true,
          cursorColor: kBlackColor,
          decoration: InputDecoration(
            hintText: 'Your password',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(defaultRadius),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(defaultRadius),
              borderSide: BorderSide(
                color: kPrimaryColor,
              ),
            ),
          ),
        );
      }

      Widget hobby() {
        return TextFormField(
          controller: hobbyController,
          cursorColor: kBlackColor,
          decoration: InputDecoration(
            hintText: 'Your hobby',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(defaultRadius),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(defaultRadius),
              borderSide: BorderSide(
                color: kPrimaryColor,
              ),
            ),
          ),
        );
      }

      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
          vertical: 30,
        ),
        decoration: BoxDecoration(
            color: kWhiteColor, borderRadius: BorderRadius.circular(18)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Full Name',
              style: blackTextStyle,
            ),
            SizedBox(
              height: 6,
            ),
            fullName(),
            SizedBox(
              height: 20,
            ),
            Text(
              'Email Address',
              style: blackTextStyle,
            ),
            SizedBox(
              height: 6,
            ),
            emailAddress(),
            SizedBox(
              height: 20,
            ),
            Text(
              'Password',
              style: blackTextStyle,
            ),
            SizedBox(
              height: 6,
            ),
            password(),
            SizedBox(
              height: 20,
            ),
            Text(
              'Hobby',
              style: blackTextStyle,
            ),
            SizedBox(
              height: 6,
            ),
            hobby(),
            SizedBox(
              height: 30,
            ),
            BlocConsumer<AuthCubit, AuthState>(
              listener: (context, state) {
                if (state is AuthSuccess) {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/bonus', (route) => false);
                } else if (state is AuthFailed) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: kRedColor,
                      content: Text(state.error),
                    ),
                  );
                }
              },
              builder: (context, state) {
                if (state is AuthLoading) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return GestureDetector(
                    onTap: () {
                      context.read<AuthCubit>().SignUp(
                            email: emailController.text,
                            password: passwordController.text,
                            name: nameController.text,
                            hobby: hobbyController.text,
                          );
                    },
                    child: CustomButton(
                      customMargin: 0,
                      description: 'Get Started',
                    ));
              },
            ),
          ],
        ),
      );
    }

    Widget footer() {
      return Center(
        child: Text(
          'Terms and Conditions',
          style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
            decoration: TextDecoration.underline,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        children: [
          title(),
          input(),
          SizedBox(
            height: 50,
          ),
          footer(),
        ],
      ),
    );
  }
}
