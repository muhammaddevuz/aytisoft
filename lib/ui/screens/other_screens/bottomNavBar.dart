import '../profile_screen/workExp_screen.dart';
import 'package:flutter/material.dart';
import '../../../utils/constant_colors.dart';

class Bottomnavbar extends StatefulWidget {
  @override
  _BottomnavbarState createState() => _BottomnavbarState();
}

class _BottomnavbarState extends State<Bottomnavbar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _getSelectedWidget(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Constantcolors.orange,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/home.png',
              width: 24,
              height: 24,
              color:
                  _selectedIndex == 0 ? Constantcolors.darkOrange : Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/smth.png',
              width: 24,
              height: 24,
              color:
                  _selectedIndex == 1 ? Constantcolors.darkOrange : Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundColor: Constantcolors.mainColor,
              child: Icon(Icons.add, color: Colors.white),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/message.png',
              width: 24,
              height: 24,
              color:
                  _selectedIndex == 3 ? Constantcolors.darkOrange : Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/save.png',
              width: 24,
              height: 24,
              color:
                  _selectedIndex == 4 ? Constantcolors.darkOrange : Colors.grey,
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _getSelectedWidget(int index) {
    switch (index) {
      case 0:
        return WorkexpScreen();
      case 1:
        return Text('Groups Page');
      case 2:
        return Text('Add Page');
      case 3:
        return Text('Chat Page');
      case 4:
        return Text('Bookmarks Page');
      default:
        return Text('Home Page');
    }
  }
}
