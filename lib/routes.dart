import 'package:flutter/widgets.dart';
import 'package:shop_app/screens/cart/cart_screen.dart';
import 'package:shop_app/screens/categoryview/art.dart';
import 'package:shop_app/screens/categoryview/ds.dart';
import 'package:shop_app/screens/categoryview/learning.dart';
import 'package:shop_app/screens/categoryview/music.dart';
import 'package:shop_app/screens/categoryview/quick.dart';
import 'package:shop_app/screens/categoryview/socialservices.dart';
import 'package:shop_app/screens/categoryview/homeworkers.dart';
import 'package:shop_app/screens/complete_profile/complete_profile_screen.dart';
import 'package:shop_app/screens/details/components/calendar.dart';
import 'package:shop_app/screens/details/components/hora.dart';
import 'package:shop_app/screens/details/components/scheduled.dart';
import 'package:shop_app/screens/details/details_screen.dart';
import 'package:shop_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:shop_app/screens/home/components/courses.dart';
import 'package:shop_app/screens/home/components/courses2.dart';
import 'package:shop_app/screens/home/components/courses3.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/screens/login_success/login_success_screen.dart';
import 'package:shop_app/screens/otp/otp_screen.dart';
import 'package:shop_app/screens/profile/profile_screen.dart';
import 'package:shop_app/screens/sign_in/sign_in_screen.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';

import 'screens/sign_up/sign_up_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  HomeWorkersScreen.routeName: (context) => HomeWorkersScreen(),
  ArtScreen.routeName: (context) => ArtScreen(),
  SocialServicesScreen.routeName: (context) => SocialServicesScreen(),
  MusicScreen.routeName: (context) => MusicScreen(),
  LearningScreen.routeName: (context) => LearningScreen(),
  DSScreen.routeName: (context) => DSScreen(),
  QuickScreen.routeName: (context) => QuickScreen(),
  Calendarx.routeName: (context) => Calendarx(),
  Courses.routeName: (context) => Courses(),
  Courses2.routeName: (context) => Courses2(),
  Courses3.routeName: (context) => Courses3(),
  Scheduled.routeName: (context) => Scheduled(),
  DayNight.routeName: (context) => DayNight()
};
