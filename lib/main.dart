import 'package:template_workflow/core/router/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() async {
  final GoRouter router =
      await initializeRouter(); // Ensure the router is fully initialized
  runApp(MyApp(router: router));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.router});
  final GoRouter router;
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
