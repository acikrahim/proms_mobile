import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:proms_mobile/shared/colors.dart';

import '../../widgets/bg_container.dart';
import 'events.dart';
import 'transactions.dart';
import 'home.dart';
import 'notifications.dart';
import 'profile_settings.dart';

class BottomNav extends StatefulWidget {
  static const routeName = '/bottom-nav';
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _page = 2;
  final _widgetBody = const <Widget>[
    EventsScreen(),
    TransactionsScreen(),
    HomeScreen(),
    NotificationsScreen(),
    ProfileSettingsScreen()
  ];
  final _widgetIcon = const <Widget>[
    Icon(Icons.event_note_sharp, size: 26),
    Icon(Icons.receipt_sharp, size: 26),
    Icon(Icons.home_sharp, size: 26),
    Icon(Icons.notification_important_sharp, size: 26),
    Icon(Icons.account_circle_sharp, size: 26)
  ];
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.gray,
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 2,
          items: _widgetIcon,
          color: AppColor.btmNavbtnBgColor,
          buttonBackgroundColor: AppColor.btmNavbtnBgColor,
          backgroundColor: Colors.transparent,
          animationCurve: Curves.easeInOut,
          height: 64,
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
        ),
        body: Stack(
          children: [
            Column(children: [
              const Expanded(flex: 6, child: BgContainer()),
              Expanded(flex: 4, child: Container(color: Colors.transparent))
            ]),
            Align(
              alignment: const Alignment(0, 0.5),
              child: IndexedStack(
                index: _page,
                children: _widgetBody,
              ),
            )
          ],
        ));
  }
}
