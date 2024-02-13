import 'package:flutter/material.dart';
import 'package:prueba1/ui/shared/custom_flat_buttom.dart';

class View404 extends StatelessWidget {
  const View404({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center ,
            children: [
              const Text('404', style: TextStyle(fontSize:40,fontWeight: FontWeight.bold)),
              const Text('No se ha encontrado la pagina', style: TextStyle(fontSize:20)),
              CustomFlatButtom(
                text: 'Regresar',
                onPressed: ()=> Navigator.pushNamed(context, '/stateful'))
    
            ]
            )
        ),
    );
  }
}