import 'package:flutter/material.dart';
import 'package:prueba1/locator.dart';
import 'package:prueba1/ui/layout/main_layout_page.dart';
import 'package:prueba1/services/navigation_service.dart';
import 'package:prueba1/ui/router/router.dart';

void main() {
  setupLocator();
  Flurorouter.configureRouter();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Counter',
      initialRoute: '/',
      onGenerateRoute: Flurorouter.router.generator, 
      navigatorKey: locator<NavigationService>().navigatorKey,    
      builder: (_,child){
        return MainLayoutPage(
            child: child ?? Container()
        );
      },
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.white
      ), 
    );
  }
}