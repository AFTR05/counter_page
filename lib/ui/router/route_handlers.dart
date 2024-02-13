import 'package:fluro/fluro.dart';
import '../../views/counter_provider_page.dart';
import '../../views/counter_view.dart';
import '../../views/view_404.dart';

final Handler counterHandler = Handler(
    handlerFunc: (contex,params) {
      print(params['base']?[0]);
      return CounterView(base: params['base']?[0] ?? '5'); 
    }
  );

final Handler dashboardUserHandler = Handler(
    handlerFunc: (contex,params) {
      print(params);
      return const View404(); 
    }
  );

final Handler providerHandler = Handler(
    handlerFunc: (context, parameters) {
      print(parameters);
      return CounterProviderView(base: parameters['q']?[0] ?? '62');
    }
  );

final Handler view404 = Handler(
    handlerFunc: (context, parameters) => const View404()
  );