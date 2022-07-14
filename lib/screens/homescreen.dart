import 'package:flutter/material.dart';
import 'package:oneshot/screens/overview/overview_root.dart';
import 'package:oneshot/screens/search/search_root.dart';
import 'package:oneshot/screens/wiki/wiki_root.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  static const List<BottomNavigationBarItem> navigationBarItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.textsms_sharp),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Stats',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.book),
      label: 'Wiki',
    )
  ];

  // Creates the same instance of an object
  // List<GlobalKey<NavigatorState>> keys =
  //     List.filled(navigationBarItems.length, GlobalKey<NavigatorState>());

  List<GlobalKey<NavigatorState>> keys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [
          OverviewRoot(
            navigatorKey: keys[0],
          ),
          SearchRoot(
            navigatorKey: keys[1],
          ),
          WikiRoot(
            navigatorKey: keys[2],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: _currentIndex,
        onTap: (int index) {
          if (index != _currentIndex) {
            setState(() {
              _currentIndex = index;
            });

            if (keys[index].currentState!.canPop()) {
              keys[index].currentState!.popUntil((route) => route.isFirst);
            }
          }
        },
        items: navigationBarItems,
      ),
    );
  }
}
