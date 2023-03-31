import 'package:first_app/screens/home_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'calendar_widget.dart';
import 'package:first_app/screens/calender_page.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_webservice/places.dart';
import 'package:location/location.dart';
import 'package:first_app/screens/nearbyplaces.dart';

// ignore: camel_case_types
class bottom_bar extends StatefulWidget {
  const bottom_bar({Key? key}) : super(key: key);

  @override
  State<bottom_bar> createState() => _bottom_barState();
}

class _bottom_barState extends State<bottom_bar> {
  int  _selectedindex = 0;
  static final List_widgetOptions =<Widget>[
    const HomeScreen(),
    const Text("Search"),
    const CalendarPage(),
    const Text("Profile"),
    NearbyPlacesScreen(initialPosition: LatLng( 26.732311,88.410286), Latlng: null,),
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: List_widgetOptions[_selectedindex],
      ),
      backgroundColor: Color(0xFF1D1E33),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedindex,
        onTap: _onItemTapped,
        elevation:10,
        showSelectedLabels: false ,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black54,
        type:BottomNavigationBarType.fixed,
        unselectedItemColor: Color(0xFFEB1555),
        items: const [
        BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled)
            ,label: "Home"),
        BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_filled),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled)
            ,label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.water_drop),
            activeIcon: Icon(Icons.water_drop)
            ,label: "Period"),
        BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_filled)
            ,activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled)
            ,label: "Profile",), 
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_filled)
            ,activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled)
            ,label: "Profile",),
      ],
      ),
    );
  }
}
