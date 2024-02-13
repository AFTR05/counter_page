import 'package:fluro/fluro.dart';
import 'package:prueba1/ui/router/route_handlers.dart';


class Flurorouter{
  static final FluroRouter router = FluroRouter();

  static void configureRouter(){
    router.define(
      '/', 
      handler: counterHandler,
      transitionDuration: const Duration(milliseconds: 200),
      transitionType: TransitionType.fadeIn
      );
    router.define(
      '/stateful', 
      handler: counterHandler,
      transitionDuration: const Duration(milliseconds: 200),
      transitionType: TransitionType.fadeIn
      );

      router.define(
      '/stateful/:base', 
      handler: counterHandler,
      transitionDuration: const Duration(milliseconds: 200),
      transitionType: TransitionType.fadeIn
      );
    router.define(
      '/provider', 
      handler: providerHandler,
      transitionDuration: const Duration(milliseconds: 200),
      transitionType: TransitionType.fadeIn
      );
      router.define(
      '/dashboard/users/:userid/:roleid',  
      handler: dashboardUserHandler,
      transitionDuration: const Duration(milliseconds: 200),
      transitionType: TransitionType.fadeIn
      );
    router.notFoundHandler = view404;
  }

  //handlers

  
  
}