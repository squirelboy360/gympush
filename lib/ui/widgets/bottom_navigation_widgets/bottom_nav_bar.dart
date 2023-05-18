import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:gympush/colors.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: null,
    items: [
      const BottomNavigationBarItem(icon: Icon(Icons.fitness_center,color: Colors.grey,),tooltip: 'push',label: 'pushUp',activeIcon: Icon(Icons.fitness_center_rounded,color: Colors.green,),
      ),
      const BottomNavigationBarItem(icon: Icon(CupertinoIcons.chart_bar_alt_fill,color: Colors.grey,),tooltip: 'stats',label: 'stats',activeIcon: Icon(CupertinoIcons.chart_bar_alt_fill,color: Colors.blueAccent,),
      ),
      BottomNavigationBarItem(icon: const Icon(CupertinoIcons.settings_solid,color: Colors.grey,),tooltip: 'preferences',label: 'preferences',activeIcon: Icon(CupertinoIcons.settings_solid,color: defaultNative,),
      )
    ],
    );
  }
}
