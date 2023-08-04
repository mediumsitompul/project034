import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Google Map (Flutter Circle)")),
        ),
        body: MyMap(),
      ),
    );
  }
}

class MyMap extends StatefulWidget {
  const MyMap({super.key});

  @override
  State<MyMap> createState() => _MyMapState();
}

class _MyMapState extends State<MyMap> {
  Set<Marker> marker1 = Set();

  LatLng showLocation1 = LatLng(0.0, 0.0);

  //...........................................
  @override
  void initState() {
    marker1.add(
      Marker(
        markerId: MarkerId("1"),
        position: showLocation1,
      ),
    );
    // TODO: implement initState

    super.initState();
  }

  //...........................................
  Set<Circle> circles1 = Set.from([
    Circle(circleId: CircleId("1"), center: LatLng(0.0, 0.0), radius: 2000000)
  ]);
  //...........................................
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(target: showLocation1, zoom: 2),
        markers: marker1,
        circles: circles1,
      ),
    );
  }
}
