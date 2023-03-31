import 'package:first_app/screens/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_webservice/places.dart';
import 'package:location/location.dart';

import 'package:first_app/screens/nearbyplaces.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nearby Places',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const bottom_bar(),
    );
  }
}
