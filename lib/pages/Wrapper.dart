import 'package:flutter/material.dart';
import 'package:flutter_test_application/custom/constants/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void testingTap({String? x = "string", int? y = 0, double? z = 0.0}) {
    print(x);
    print(y);
    print(z);
  }

  Widget testingTap2({Widget? child, Widget? leading}) {
    return Container();
  }

  @override
  void initState() {
    testingTap(x: "x", y: null, z: null);
    testingTap2();
    super.initState();
  }

  final List<Widget> _screens = <Widget>[
    Text("Match"), // 0
    Text("Message"), // 1
    Text("Setting"), // 2
    Text("Profile") //3
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite, color: iconColors),
            activeIcon: Icon(Icons.favorite, color: activeIconColors),
            label: 'Match',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message, color: iconColors),
            activeIcon: Icon(Icons.message, color: activeIconColors),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: iconColors),
            activeIcon: Icon(Icons.settings, color: activeIconColors),
            label: 'Setting',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: iconColors),
            activeIcon: Icon(Icons.person, color: activeIconColors),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: bgColor,
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
        //showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
    );
  }
}
