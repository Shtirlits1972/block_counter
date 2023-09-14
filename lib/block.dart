import 'package:flutter_bloc/flutter_bloc.dart';

class Keeper {
  int _counter = 0;
}

class DataCubit extends Cubit<Keeper> {
  int get getCounter => state._counter;

  increment() {
    state._counter++;
  }

  decrement() {
    state._counter--;
  }

  DataCubit(Keeper initState) : super(initState);
}
