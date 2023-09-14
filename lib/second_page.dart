import 'package:block_counter/block.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Second Page',
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: BlocBuilder<DataCubit, Keeper>(
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  context.read<DataCubit>().getCounter.toString(),
                  style: const TextStyle(fontSize: 30),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        context.read<DataCubit>().increment();
                        setState(() {});
                        print(context.read<DataCubit>().getCounter);
                      },
                      child: const Text(
                        '+',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        context.read<DataCubit>().decrement();
                        setState(() {});
                        print(context.read<DataCubit>().getCounter);
                      },
                      child: const Text(
                        '-',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                    child: const Text('To First Page'))
              ],
            ),
          );
        },
      ),
    );
  }
}
