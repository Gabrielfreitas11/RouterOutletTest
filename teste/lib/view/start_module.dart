
import 'package:flutter_modular/flutter_modular.dart';
import 'package:teste/view/start.dart';

import 'pages/page1/page1_module.dart';
import 'pages/page2/page1_module.dart';
import 'pages/page3/page1_module.dart';
import 'pages/page4/page1_module.dart';

class StartModule extends Module {
  @override
  final List<Bind> binds = [

  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => Start(), children: [
      ModuleRoute('/page1', module: Page1Module(),transition: TransitionType.noTransition),
      ModuleRoute('/page2', module: Page2Module(),transition: TransitionType.noTransition),
      ModuleRoute('/page3', module: Page3Module(),transition: TransitionType.noTransition),
      ModuleRoute('/page4', module: Page4Module(),transition: TransitionType.noTransition)

    ]),
  ];
}
