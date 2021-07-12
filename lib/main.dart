import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_store/Logic/APIRequests.dart';
import 'package:test_store/MainScreens/CategoriesScreen.dart';
import 'package:test_store/MainScreens/HomeScreen.dart';
import 'package:test_store/MainScreens/LoginScreen.dart';
import 'package:test_store/MainScreens/OrdersScreen.dart';
import 'package:test_store/MainScreens/ProfileScreen.dart';
import 'package:test_store/MainScreens/SignupScreen.dart';
import 'package:test_store/MainScreens/SplashScreen.dart';

import 'Logic/StateManagement.dart';
import 'MainScreens/NavigationBar.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var email = prefs.getString("email");
  runApp(ProviderScope(
      child: GetMaterialApp(
          home:
           email == null ? LoginScreen() : CustomSplashScreen()
           )));
}
