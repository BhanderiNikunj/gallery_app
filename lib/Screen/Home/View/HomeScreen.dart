import 'package:flutter/material.dart';
import 'package:gallery_app/Screen/Home/Provider/HomeProvider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeProvider? homeProvidertrue, homeProviderfalse;

  @override
  Widget build(BuildContext context) {
    homeProvidertrue = Provider.of<HomeProvider>(context, listen: true);
    homeProviderfalse = Provider.of<HomeProvider>(context, listen: false);
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          body: homeProviderfalse!.Screens[homeProviderfalse!.i],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: homeProvidertrue!.i,
            onTap: (value) {
              homeProviderfalse!.update(value);
            },
            mouseCursor: MouseCursor.uncontrolled,
            selectedFontSize: 20,
            selectedIconTheme: IconThemeData(color: Colors.black,size: 40),
            selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
            selectedItemColor: Colors.black,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.play_arrow),
                label: "Video",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
