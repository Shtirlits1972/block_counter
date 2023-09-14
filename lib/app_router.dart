import 'package:block_counter/block.dart';
import 'package:block_counter/first_page.dart';
import 'package:block_counter/second_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  final DataCubit cubit = DataCubit(Keeper());

  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: cubit,
            child: const FirstPage(),
          ),
        );

      case '/SecondPage':
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: cubit,
            child: const SecondPage(),
          ),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: cubit,
            child: const FirstPage(),
          ),
        );
    }
  }
}
