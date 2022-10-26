import 'package:bloc_provider_value/core/bloc.dart';
import 'package:bloc_provider_value/features/screens/home/button_add_widget.dart';
import 'package:bloc_provider_value/features/screens/home/button_remove_widget.dart';
import 'package:bloc_provider_value/features/screens/home/data_widget.dart';
import 'package:bloc_provider_value/features/screens/setting/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    CounterCubit cubit = context.read<CounterCubit>();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bloc Provider Value',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              ButtonRemoveWidget(),
              DataWidget(),
              ButtonAddWidget(),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: ((context) => BlocProvider.value(
                    value: cubit,
                    child: const SettingScreen(),
                  )),
            ),
          );

          // Navigator.of(context).push(
          //   MaterialPageRoute(
          //     builder: ((context) => BlocProvider<CounterCubit>(
          //           create: ((context) => cubit),
          //           child: const SettingScreen(),
          //         )),
          //   ),
          // );

          
        },
        child: const Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
      ),
    );
  }
}
