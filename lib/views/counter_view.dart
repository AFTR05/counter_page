import 'package:flutter/material.dart';

import '../ui/shared/Custom_flat_buttom.dart';



class CounterView extends StatefulWidget {
  const CounterView({super.key,this.base='5'});

  final String base;
  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int counter = 0;

  @override
  void initState() {
    super.initState();
    if(int.tryParse(widget.base) != null){
      counter = int.parse(widget.base);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
      );
  }
}

