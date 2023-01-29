import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:proms_mobile/shared/colors.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});
  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _page = 2;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          items: const <Widget>[
            Icon(Icons.event_note_sharp, size: 26),
            Icon(Icons.receipt_sharp, size: 26),
            Icon(Icons.home_sharp, size: 26),
            Icon(Icons.notification_important_sharp, size: 26),
            Icon(Icons.account_circle_sharp, size: 26)
          ],
          color: AppColor.bgColor,
          buttonBackgroundColor: AppColor.bgColor,
          backgroundColor: AppColor.green,
          animationCurve: Curves.easeInOut,
          height: 64,
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
        ),
        body: Container(
          color: AppColor.green,
          child: Center(
            child: Column(
              children: <Widget>[
                Text(_page.toString(), textScaleFactor: 10.0),
                ElevatedButton(
                  child: const Text('Go To Page of index 1'),
                  onPressed: () {
                    final CurvedNavigationBarState? navBarState =
                        _bottomNavigationKey.currentState;
                    navBarState?.setPage(0);
                  },
                )
              ],
            ),
          ),
        ));
  }
}
