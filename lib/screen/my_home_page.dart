import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:template_workflow/screen/favourite_screen.dart';
import 'package:template_workflow/features/test_1/presentation/views/screen/tesr_1_screen.dart';
import 'package:template_workflow/screen/search_screen.dart';
import 'package:template_workflow/screen/setting_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(); // Initialize PageController
  }

  @override
  void dispose() {
    _pageController.dispose(); // Dispose the controller when not needed
    super.dispose();
  }

  // List of screens to switch between
  final List<Widget> _pages = [
    const Tesr1Screen(),
    const FavouriteScreen(),
    const SearchScreen(),
    const SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index; // Update selected index when swiped
          });
        },
        children: _pages,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: GNav(
          rippleColor: Colors.grey.shade800,
          hoverColor: Colors.grey.shade700,
          tabBorderRadius: 15,
          curve: Curves.easeOutExpo,
          duration: const Duration(milliseconds: 900),
          gap: 8,
          color: Colors.grey[800],
          activeColor: Colors.purple,
          iconSize: 24,
          tabBackgroundColor: Colors.purple.withOpacity(0.1),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          onTabChange: chagePage,
          selectedIndex: _selectedIndex,
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.favorite_border,
              text: 'Likes',
            ),
            GButton(
              icon: Icons.search,
              text: 'Search',
            ),
            GButton(
              icon: Icons.settings,
              text: 'Settings',
            ),
          ],
        ),
      ),
    );
  }

  void chagePage(index) {
    setState(() {
      _selectedIndex = index; // Update selected index on tab click
    });
    _pageController.animateToPage(
      // Animate page transition
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOutExpo,
    );
  }
}
