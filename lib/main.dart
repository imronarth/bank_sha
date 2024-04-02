import 'package:bank_sha/blocs/auth/auth_bloc.dart';
import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/pages/home_page.dart';
import 'package:bank_sha/ui/pages/onboarding_page.dart';
import 'package:bank_sha/ui/pages/pin_page.dart';
import 'package:bank_sha/ui/pages/profil_page.dart';
import 'package:bank_sha/ui/pages/profile_edit_page.dart';
import 'package:bank_sha/ui/pages/profile_edit_pin.dart';
import 'package:bank_sha/ui/pages/profile_edit_success.dart';
import 'package:bank_sha/ui/pages/sign_in_page.dart';
import 'package:bank_sha/ui/pages/sign_up_page.dart';
import 'package:bank_sha/ui/pages/sign_up_success.dart';
import 'package:bank_sha/ui/pages/splash_pages.dart';
import 'package:bank_sha/ui/pages/top_up_amount_page.dart';
import 'package:bank_sha/ui/pages/top_up_page.dart';
import 'package:bank_sha/ui/pages/top_up_success.dart';
import 'package:bank_sha/ui/pages/transfer_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc()..add(AuthGetCurrentUser()),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: lightBackgroundColor,
          appBarTheme: AppBarTheme(
            centerTitle: true,
            backgroundColor: lightBackgroundColor,
            elevation: 0,
            iconTheme: IconThemeData(color: blackColor),
            titleTextStyle: blackTextStyle.copyWith(
              fontSize: 20, 
              fontWeight: semiBold
            ),
          )
        ),
        routes: {
          '/'                    : (context) => const SplashPage(),
          '/onboarding'          : (context) => const OnboardingPage(),
          '/sign-in'             : (context) => const SignInPage(),
          '/sign-up'             : (context) => const SignUpPage(),
          '/sign-up-success'     : (context) => const SignUpSuccessPage(),
          '/home-page'           : (context) => const HomePage(),
          '/profile'             : (context) => const ProfilPage(),
          '/profile-edit'        : (context) => const ProfileEditPage(),
          '/pin'                 : (context) => const PinPage(),
          '/profile-edit-pin'    : (context) => const ProfileEditPinPage(),
          '/profile-edit-success': (context) => const ProfileEditSuccessPage(),
          '/top-up'              : (context) => const TopUpPage(),
          '/top-up-amount'       : (context) => const TopUpAmountPage(),
          '/top-up-success'      : (context) => const TopUpSuccessPage(),
          '/transfer'            : (context) => const TransferPage(),
        },
      ),
    );
  }
}