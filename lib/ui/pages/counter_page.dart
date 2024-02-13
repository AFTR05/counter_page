import 'package:flutter/material.dart';
import 'package:prueba1/ui/shared/custom_app_menu.dart';

import '../shared/custom_flat_buttom.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustomAppMenu(),
          const Spacer(),
          const Text('Contador stateful',style: TextStyle(fontSize: 20),),
          FittedBox(
            fit: BoxFit.contain,
            child: 
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Contador: $counter', 
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
                onPressed: () => setState(() => counter++)
              ),
              CustomFlatButtom(
                text: 'Decrementar -',
                onPressed: () => setState(() => counter--)
              )
            ]
          ),
          const Spacer()         
        ],
      ),
    );
  }
}

