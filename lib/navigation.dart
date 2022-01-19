import 'package:flutter/material.dart';
import 'package:vms/bottom_navigation.dart';
import 'package:vms/app.dart';
import 'package:vms/home.dart';
import 'package:vms/menu.dart';

class Navigation extends StatefulWidget {

  final int selectedIndex;

  const Navigation({Key? key, required this.selectedIndex}) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {

  int _selectedIndex = 0;
  String? phoneNo;

  @override
  void initState() {
    _selectedIndex = widget.selectedIndex;
    super.initState();
  }

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedIndex = i;
    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: BottomNavbar(
        elevation: 8.0,
        index: _selectedIndex,
        labelStyle: LabelStyle(
            showOnSelect: false,
            onSelectTextStyle: const TextStyle(color: defaultOnSelectColor, fontSize: 12.0),
            textStyle: TextStyle(color: defaultColor, fontSize: 12.0),
            visible: true
        ),
        iconStyle: IconStyle(
            onSelectColor: const Color(0xFF3B406D),
            barColor: Colors.transparent,
            onSelectBarColor: Colors.blue,
            color: defaultColor,
            onSelectSize: 35.0,
            size: 35.0
        ),
        items: [
          BottomNavItem(icon: Icons.home, label: 'home'),
          BottomNavItem(icon: Icons.rss_feed, label: 'notification'),
          BottomNavItem(icon: Icons.list, label: 'bookmark'),
          BottomNavItem(icon: Icons.settings, label: 'settings')
        ],
        onTap: _handleIndexChanged,
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }

  final List<Widget> _widgetOptions = [
    Home(),
    const Scaffold(
      body: Center(
        child: Text("For future work"),
      ),
    ),
    const Scaffold(
      body: Center(
        child: Text("For future work"),
      ),
    ),
    Menu()
  ];
}
