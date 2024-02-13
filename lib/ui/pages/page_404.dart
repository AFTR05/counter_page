import 'package:flutter/material.dart';
import 'package:prueba1/ui/shared/custom_flat_buttom.dart';

class Page404 extends StatelessWidget {
  const Page404({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center ,
          children: [
            Text('404', style: TextStyle(fontSize:40,fontWeight: FontWeight.bold)),
            Text('No se ha encontrado la pagina', style: TextStyle(fontSize:20)),
            CustomFlatButtom(
              text: 'Regresar',
              onPressed: ()=> Navigator.pushNamed(context, '/stateful'))

          ]
          )
      ),
    );
  }
}