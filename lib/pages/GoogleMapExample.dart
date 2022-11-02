import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapExample extends StatefulWidget {
  const GoogleMapExample({Key? key}) : super(key: key);

  @override
  State<GoogleMapExample> createState() => _GoogleMapExampleState();
}

class _GoogleMapExampleState extends State<GoogleMapExample> {
  late GoogleMapController mapController;
  Map<String, Marker> _markers = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Google Map'),),
      body: Container(
        child: GoogleMap(initialCameraPosition: CameraPosition(
            target: LatLng(23.780981364479256, 90.40034501068479),
            zoom: 18),
        onMapCreated: (controller){
          mapController = controller;
          addMarker('test', LatLng(23.780981364479256, 90.40034501068479));
        },
        markers: _markers.values.toSet(),),
      ),
    );
  }

  addMarker(String markerId, LatLng location) async {

    var markerIcon = await BitmapDescriptor.fromAssetImage(ImageConfiguration(), 'images/marker.png');

    var marker = Marker(markerId: MarkerId(markerId), position: location, infoWindow: InfoWindow(
      title: 'Marker title',
      snippet: 'Please your marker description here'
    ), icon: markerIcon);
    _markers[markerId] = marker;
    setState((){
    });
  }

}
