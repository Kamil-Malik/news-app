import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/ui/screen/home.dart';

void main() {
  runApp(const NewsApp());
}

// GoRouter configuration
final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const NewsHomeScreen(),
    ),
  ],
);

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      theme: ThemeData(
        useMaterial3: true
      ),
    );
  }
}
