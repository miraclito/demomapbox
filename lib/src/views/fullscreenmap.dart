import 'package:flutter/material.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

class Fullscreenmap extends StatefulWidget {

  @override
  _FullScreenMapState createState() => _FullScreenMapState();

}

class _FullScreenMapState extends State<Fullscreenmap> {
  late MapboxMapController mapController;

  void _onMapCreated(MapboxMapController controller){
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MapboxMap(

        onMapCreated: _onMapCreated,
        initialCameraPosition:
        const CameraPosition(target: LatLng(-15.529349, -70.117586)),

      )
    );
  }
}
