import 'package:block_counter/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final AppRouter appRouter = AppRouter();

    return MaterialApp(
      title: 'Block Counter',
      onGenerateRoute: appRouter.onGenerateRoute,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
