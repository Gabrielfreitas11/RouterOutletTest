
import 'package:flutter_modular/flutter_modular.dart';

import 'page1.dart';

class Page4Module extends Module {
  @override
  final List<Bind> binds = [

  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => Page4()),
  ];
}