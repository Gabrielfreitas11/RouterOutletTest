
import 'package:flutter_modular/flutter_modular.dart';
import 'package:teste/view/pages/page1/page1.dart';

class Page1Module extends Module {
  @override
  final List<Bind> binds = [

  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => Page1()),
  ];
}
