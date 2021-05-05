import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class Start extends StatefulWidget {
  Start({Key? key, this.title = 'Flutter Demo Home Page' }) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {

  ValueNotifier<int> currentIndex = ValueNotifier(0);

  List<String> pages = <String>[
    "/page1",
    "/page2",
    "/page3",
    "/page4"
  ];


    bottomNavigationBar() {
    return Row(
      children: [
        bottomNavBarItem(context,
            activeIcon: Icons.home, icon: Icons.home_outlined, index: 0),
        bottomNavBarItem(context,
            activeIcon: Icons.people_alt,
            icon: Icons.people_alt_outlined,
            index: 1),
        bottomNavBarItem(context,
            activeIcon: Icons.hourglass_full,
            icon: Icons.hourglass_empty_sharp,
            index: 2),
        bottomNavBarItem(context,
            activeIcon: Icons.person, icon: Icons.person_outline, index: 3)
      ],
    );
  }

  bottomNavBarItem(BuildContext context,
      {required IconData icon,
      required IconData activeIcon,
      required int index}) {
    return ValueListenableBuilder(
        valueListenable: currentIndex,
        builder: (context, value, child) {
          return GestureDetector(
              onTap: () =>
                  setIndexValue(index: index),
              child: Container(
                  color: Colors.transparent,
                  width: MediaQuery.of(context).size.width / 4,
                  height: 60,
                  child: Icon(value == index ? activeIcon : icon)));
        });
  }

    setIndexValue({required int index}) async {
        currentIndex.value = index;
        Modular.to.navigate(pages[index]);
  }

  initState() {
    super.initState();

    Modular.to.navigate('/page1');
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: RouterOutlet(),
      bottomNavigationBar: bottomNavigationBar() ,
    );
  }
}
