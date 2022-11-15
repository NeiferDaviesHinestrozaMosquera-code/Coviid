import 'package:coviidapp/Screens/Menu/menus.dart';
import 'package:coviidapp/Screens/home_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';


class MenuScreen extends StatefulWidget {

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  int selectedIndex = 0;
  final extra = [CovidPage(),TestScreen(),HomePage()];

  @override 
Widget build (BuildContext context){
return Scaffold(
bottomNavigationBar: CurvedNavigationBar(
  // color: Colors.tealAccent,
  index : selectedIndex,
      key: NarbarKey.getKey(),
        items: [
          Icon(Icons.view_carousel, size:50,color: Colors.teal,), ///Inicio
          Icon(Icons.vaccines, size: 50 , color: Colors.teal), ///INFORMACION
          Icon(Icons.verified_user_outlined, size: 50 , color: Colors.teal), ///mAPA
          // Icon(Icons.chat, size: 30), ///ECOTICS
          // Icon(Icons.person, size: 30,) /// INFORMACION USER
          ],
          onTap: (index){
     setState(() {
  selectedIndex = index;
                  });
          },
          animationCurve: Curves.easeInBack,
          animationDuration: const Duration(milliseconds: 300),
        ),
      body:  extra[selectedIndex],
      );
    }
}

class NarbarKey{
  NarbarKey._();

  static final GlobalKey _key = GlobalKey();

  static GlobalKey getKey() => _key;
}