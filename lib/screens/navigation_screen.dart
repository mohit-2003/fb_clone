import 'package:fb_clone/data.dart';
import 'package:fb_clone/screens/home_screen.dart';
import 'package:fb_clone/widgets/custom_bottom_nav_bar.dart';
import 'package:fb_clone/widgets/desktop_app_bar.dart';
import 'package:fb_clone/widgets/responsive_lyt.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({Key? key}) : super(key: key);

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int _selectedScreenIndex = 0;
  final List<Widget> _screensList = [
    new HomeScreen(),
    new Scaffold(
      body: new Center(
        child: new Text("Videos"),
      ),
    ),
    new Scaffold(
      body: new Center(
        child: new Text("Profile"),
      ),
    ),
    new Scaffold(
      body: new Center(
        child: new Text("Groups"),
      ),
    ),
    new Scaffold(
      body: new Center(
        child: new Text("Notification"),
      ),
    ),
    new Scaffold(
      body: new Center(
        child: new Text("Menu"),
      ),
    )
  ];
  final List<IconData> _iconsList = [
    Icons.home,
    Icons.ondemand_video,
    MdiIcons.accountCircleOutline,
    MdiIcons.accountGroupOutline,
    MdiIcons.bellOutline,
    Icons.menu
  ];

  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
        length: 6,
        child: new Scaffold(
          appBar: ResponsiveLayout.isDesktop(context)
              ? new PreferredSize(
                  preferredSize:
                      new Size(MediaQuery.of(context).size.width, 100),
                  child: new DesktopAppBar(
                    icons: _iconsList,
                    currentUser: currentUser,
                    selectedIndex: _selectedScreenIndex,
                    onTap: (index) {
                      setState(() {
                        _selectedScreenIndex = index;
                      });
                    },
                  ))
              : null,
          body: new IndexedStack(
              index: _selectedScreenIndex, children: _screensList),
          bottomNavigationBar: ResponsiveLayout.isMobile(context)
              ? new CustomBottomNavBar(
                  icons: _iconsList,
                  selectedScreen: _selectedScreenIndex,
                  onTap: (index) {
                    setState(() {
                      _selectedScreenIndex = index;
                    });
                  },
                )
              : new SizedBox(),
        ));
  }
}
