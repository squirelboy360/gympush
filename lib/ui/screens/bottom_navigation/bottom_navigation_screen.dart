import 'package:flutter/material.dart';
import 'package:gympush/ui/screens/push_up_screen.dart';
import 'package:gympush/ui/widgets/bottom_navigation_widgets/bottom_nav_bar.dart';


class NavigationScreen extends StatelessWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PushScreen(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}




