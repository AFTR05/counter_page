import 'package:flutter/material.dart';
import 'package:prueba1/ui/shared/custom_app_menu.dart';



class MainLayoutPage extends StatelessWidget {
  const MainLayoutPage({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            CustomAppMenu(),
            Spacer(),
            Expanded(
              child: child
            ),
            Spacer()
          ]
          )
      ),
    );
  }
}