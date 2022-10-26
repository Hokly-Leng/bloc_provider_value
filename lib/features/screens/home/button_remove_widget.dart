import 'package:bloc_provider_value/core/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ButtonRemoveWidget extends StatelessWidget {
  const ButtonRemoveWidget({super.key,});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.amber,
      borderRadius: BorderRadius.circular(25),
      child: InkWell(
        borderRadius: BorderRadius.circular(25),
        onTap: () => BlocProvider.of<CounterCubit>(context).decrement(),
        child: const SizedBox(
          width: 70,
          height: 100,
          child: Icon(Icons.remove, size: 35, color: Colors.white,),
        ),
      ),
    );
  }
}
