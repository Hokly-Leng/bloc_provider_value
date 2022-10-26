import 'package:bloc_provider_value/core/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DataWidget extends StatelessWidget {
  const DataWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      width: 200,
      height: 100,
      child: Center(

        child: BlocConsumer<CounterCubit, int>(
          bloc: BlocProvider.of(context),
          buildWhen: (previous, current) {
            if (current >= 5) {
              return true;
            } else {
              return false;
            }
          },
          builder: ((context, state) {
            return Text(
              '$state',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 50,
              ),
            );
          }),
          listenWhen: (previous, current) {
            if (current >= 5) {
              return true;
            } else {
              return false;
            }
          },
          listener: (context, state) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                duration: const Duration(milliseconds: 400),
                content: Text('Showing Snackbar $state'),
              ),
            );
          },
        ),
      ),
    );
  }
}
