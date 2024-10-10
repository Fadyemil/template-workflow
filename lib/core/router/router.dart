import 'package:template_workflow/screen/my_home_page.dart';
import 'package:template_workflow/core/router/router_name.dart';
import 'package:template_workflow/screen/favourite_screen.dart';
import 'package:template_workflow/features/test_1/presentation/views/screen/tesr_1_screen.dart';
import 'package:template_workflow/screen/search_screen.dart';
import 'package:template_workflow/screen/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

GoRouter createRouter(String initialLocation) {
  return GoRouter(
    initialLocation: initialLocation,
    routes: [
      GoRoute(
        path: RouterName.myHomePage,
        builder: (context, state) => const MyHomePage(),
      ),
      GoRoute(
        path: RouterName.test1Screen,
        builder: (context, state) => const Tesr1Screen(),
      ),
      GoRoute(
        path: RouterName.searchScreen,
        builder: (context, state) => const SearchScreen(),
      ),
      GoRoute(
        path: RouterName.favouriteScreen,
        builder: (context, state) => const FavouriteScreen(),
      ),
      GoRoute(
        path: RouterName.settingScreen,
        builder: (context, state) => const SettingScreen(),
      ),
    ],
    errorBuilder: (context, state) => const Scaffold(
      body: Center(child: Text('Page not found')),
    ),
  );
}

GoRouter initializeRouter() {
  return createRouter(RouterName.myHomePage);
}
