import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedTabItem = 0;

  static const List<Widget> _tabScreens = <Widget>[
    Text('Talks'),
    Text('Booths'),
    Text('Streaming'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedTabItem = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Route'),
        actions: <Widget>[trailingActions(context)],
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _tabScreens.elementAt(_selectedTabItem),
          ],
        ),
      ),
      bottomNavigationBar: createBottomNav(),
    );
  }

  IconButton trailingActions(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.help_outline),
      onPressed: () => Navigator.pushNamed(context, '/about'),
    );
  }

  BottomNavigationBar createBottomNav() {
    return BottomNavigationBar(
      currentIndex: _selectedTabItem,
      onTap: _onItemTapped,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.group), title: Text('Talks')),
        BottomNavigationBarItem(icon: Icon(Icons.place), title: Text('Booths')),
        BottomNavigationBarItem(
            icon: Icon(Icons.ondemand_video), title: Text('Streaming')),
      ],
    );
  }
}
