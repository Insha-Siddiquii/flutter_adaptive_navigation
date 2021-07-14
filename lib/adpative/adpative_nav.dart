import 'package:flutter/material.dart';
import 'package:adaptive_navigation/adaptive_navigation.dart';

class AdaptiveNavigation extends StatefulWidget {
  AdaptiveNavigation({Key? key}) : super(key: key);

  @override
  _AdaptiveNavigationState createState() => _AdaptiveNavigationState();
}

class _AdaptiveNavigationState extends State<AdaptiveNavigation> {
  int _selectedIndex = 0;
  List<AdaptiveScaffoldDestination> _destinations = [
    AdaptiveScaffoldDestination(title: 'Home', icon: Icons.home),
    AdaptiveScaffoldDestination(title: 'Search', icon: Icons.search),
    AdaptiveScaffoldDestination(title: 'Profile', icon: Icons.verified_user),
  ];

  @override
  Widget build(BuildContext context) {
    return AdaptiveNavigationScaffold(
      body: Center(
        child: Text('Practice on Adaptive Navigation'),
      ),
      selectedIndex: _selectedIndex,
      destinations: _destinations,
      appBar: AdaptiveAppBar(
        title: Text('Adaptive Bar'),
      ),
      fabInRail: true,
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.camera,
          )),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      includeBaseDestinationsInMenu: true,
      onDestinationSelected: (index) => {
        setState(
          () {
            _selectedIndex = index;
          },
        )
      },
    );
  }
}
