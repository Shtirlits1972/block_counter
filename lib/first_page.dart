import 'package:block_counter/block.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'First Page',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: BlocBuilder<DataCubit, Keeper>(
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(context.read<DataCubit>().getCounter.toString(),
                    style: const TextStyle(fontSize: 40)),
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
                    const SizedBox(
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
                      Navigator.pushNamed(context, '/SecondPage');
                    },
                    child: const Text('To Second Page')),
              ],
            ),
          );
        },
      ),
    );
  }
}
