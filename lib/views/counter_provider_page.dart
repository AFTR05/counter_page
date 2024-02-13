import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba1/providers/counter_provider.dart';

import '../ui/shared/Custom_flat_buttom.dart';


class CounterProviderView extends StatelessWidget {

  final String base;

  const CounterProviderView({super.key, this.base='10'});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CounterProvider(base),
      child: const _CounterProviderPageBody()
      );
  }
}

class _CounterProviderPageBody extends StatelessWidget {
  const _CounterProviderPageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final counterProvider = Provider.of<CounterProvider>(context);

    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Contador provider',style: TextStyle(fontSize: 20),),
          FittedBox(
            fit: BoxFit.contain,
            child: 
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Contador: ${counterProvider.counter}', 
                  style: const TextStyle(
                    fontSize: 80,
                    fontWeight: FontWeight.bold)
                ),
              ),
          ),
          Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              CustomFlatButtom(
                text: 'Incrementar +',
                onPressed: () => counterProvider.increment()
              ),
              CustomFlatButtom(
                text: 'Decrementar -',
                onPressed: () => counterProvider.decrement()
              )
            ]
          ),
          const Spacer()         
        ],
      );
  }
}