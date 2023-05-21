import 'package:flutter/widgets.dart';
import 'package:mobile_furtable/screens/home.dart';
import 'package:mobile_furtable/screens/profile/profile_screen.dart';
import 'package:mobile_furtable/screens/profile/update_profile.dart';
import 'package:mobile_furtable/screens/splash/splash_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  UserProfile.routeName: (context) => UserProfile(),
  UpdateProfileScreen.routeName: (context) => UpdateProfileScreen(),
  UserHome.routeName: (context) => UserHome(),
};
