import 'package:e_comarce/presentation/screens/product_screen.dart';
import 'package:e_comarce/presentation/screens/search_view_screen.dart';
import 'package:e_comarce/presentation/utils/app_colors.dart';
import 'package:flutter/material.dart';

class MainBottomNabBar extends StatefulWidget {
  const MainBottomNabBar({
    super.key,
  });

  @override
  State<MainBottomNabBar> createState() => _MainBottomNabBarState();
}

class _MainBottomNabBarState extends State<MainBottomNabBar> {
  int _selectedIndex = 0;

  void currentIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: Colors.grey[50],
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: IconThemeData(color: AppColors.buttonColor),
        onTap: currentIndex,
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductScreen(),
                ),
              ),
              child: _selectedIndex == 0
                  ? Icon(Icons.home_sharp)
                  : Icon(Icons.home_outlined),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SearchViewScreen(),
                ),
              ),
              child: _selectedIndex == 1
                  ? Icon(Icons.favorite) // Filled icon
                  : Icon(Icons.favorite_outline_rounded),
            ), // Unfilled icon
            label: 'WishList',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SearchViewScreen(),
                ),
              ),
              child: _selectedIndex == 2
                  ? Icon(Icons.insert_drive_file) // Filled icon
                  : Icon(Icons.insert_drive_file_outlined), // Unfilled icon
            ),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 3
                ? Icon(Icons.account_circle) // Filled icon
                : Icon(Icons.account_circle_outlined), // Unfilled icon
            label: 'Account',
          ),
        ]);
  }
}
