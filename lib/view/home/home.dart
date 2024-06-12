import 'package:cap_clone/utils/constant/icon_path.dart';
import 'package:flutter/material.dart';
import '../../utils/constant/colours.dart';
import '../card/cards.dart';
import '../explore/explore.dart';
import '../messages/messages.dart';
import '../transact/transact.dart';
import 'globalone.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

final PageStorageBucket bucket = PageStorageBucket();

class _HomeState extends State<Home> {
  final List<Widget> _buildScreens = [
    const GlobalOne(),
    const Cards(),
    Transact(),
    const Messages(),
    const Explore()
  ];

  Widget currentScreen = const GlobalOne();
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageStorage(bucket: bucket, child: currentScreen),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: homeIcon,
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: virtualCardIcon,
              label: 'Cards',
            ),
            BottomNavigationBarItem(
              icon: transactDarkIcon,
              label: 'Transact',
            ),
            BottomNavigationBarItem(
              icon: messagesIcon,
              label: 'Messages',
            ),
            BottomNavigationBarItem(
              icon: exploreIcon,
              label: 'Explore',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Theme.of(context).colorScheme.primary,
          unselectedItemColor: boulder,
          showUnselectedLabels: true,
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
              currentScreen = _buildScreens[index];
            });
          },
        ));
  }
}
