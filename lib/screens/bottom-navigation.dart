import 'package:contra/screens/feed.dart';
import 'package:contra/screens/profile.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List screens = [Feed(), Feed(), Feed(), Profile()];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: SizedBox(
        height: 90,
        child: Container(
          decoration: BoxDecoration(
              border: Border(top: BorderSide(color: Colors.black, width: 1.5))),
          child: Theme(
            data: ThemeData(
              splashColor: Colors.transparent,
              // highlightColor: Colors.transparent,
            ),
            child: BottomNavigationBar(
              currentIndex: _selectedIndex,
              type: BottomNavigationBarType.fixed,
              onTap: _onItemTapped,
              selectedItemColor: Colors.purple,
              unselectedItemColor: Colors.grey,
              iconSize: 24,
              selectedLabelStyle: TextStyle(
                  fontSize: 12, fontWeight: FontWeight.bold, color: Colors.red),
              unselectedLabelStyle: TextStyle(
                  fontSize: 12, fontWeight: FontWeight.bold, color: Colors.red),
              items: [
                BottomNavigationBarItem(
                  icon: Container(
                    padding: EdgeInsets.only(bottom: 8),
                    child: Icon(
                      Icons.circle,
                    ),
                  ),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                    icon: Container(
                        padding: EdgeInsets.only(bottom: 8),
                        child: Icon(Icons.star)),
                    label: "Search"),
                BottomNavigationBarItem(
                    icon: Container(
                        padding: EdgeInsets.only(bottom: 8),
                        child: Icon(Icons.save)),
                    label: "Saved"),
                BottomNavigationBarItem(
                    icon: Container(
                        padding: EdgeInsets.only(bottom: 8),
                        child: Icon(Icons.person)),
                    label: "Profile")
              ],
            ),
          ),
        ),
      ),
      body: screens[_selectedIndex],
    ));
  }
}
