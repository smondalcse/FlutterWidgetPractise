import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:test/string/constant.dart';

class GoogleMapExample extends StatefulWidget {
  const GoogleMapExample({Key? key}) : super(key: key);

  @override
  State<GoogleMapExample> createState() => _GoogleMapExampleState();
}

class _GoogleMapExampleState extends State<GoogleMapExample> {
  late GoogleMapController mapController;
  final Completer<GoogleMapController> _controller = Completer();
  Map<String, Marker> _markers = {};
  LocationData? currentLocation;

  BitmapDescriptor customeMarkerIcon = BitmapDescriptor.defaultMarker;

  // static const LatLng currentLocation1 =
  //     LatLng(23.776847382866453, 90.39481629986943);
  static const LatLng source = LatLng(23.773717420031076, 90.39006859089616);
  static const LatLng destination =
  LatLng(23.777247555332163, 90.39828337681699);
  List<LatLng> polylineCoordinates = [];

  // var markerIcon = BitmapDescriptor.fromAssetImage(
  //     ImageConfiguration(), 'images/marker.png');

  getCurrentLocation() async {
    Location location = Location();
    location.getLocation().then((location) {
      currentLocation = location;
    });

    location.onLocationChanged.listen((newLoc) {
      currentLocation = newLoc;
      // mapController.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
      //     target: LatLng(newLoc!.latitude!, newLoc!.longitude!), zoom: 13.5)));
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
        google_api_key,
        PointLatLng(source.longitude, source.longitude),
        PointLatLng(destination.latitude, destination.longitude));
    if (result.points.isNotEmpty) {
      print(result.points);
    } else {
      print("No Point found");
    }

    getDemoPoints();

    setState(() {});
  }

  getDemoPoints() {
    polylineCoordinates.add(LatLng(23.773717420031076, 90.39006859089616));
    polylineCoordinates.add(LatLng(23.773746004507355, 90.3900373559687));
    polylineCoordinates.add(LatLng(23.7750037152448, 90.38991241625888));
    polylineCoordinates.add(LatLng(23.775289556898045, 90.38991241625888));
    polylineCoordinates.add(LatLng(23.77543247748909, 90.3903184703158));
    polylineCoordinates.add(LatLng(23.775532521809385, 90.39125551813949));
    polylineCoordinates.add(LatLng(23.775675442133444, 90.39214571357198));
    polylineCoordinates.add(LatLng(23.77590411432525, 90.39312961378683));
    polylineCoordinates.add(LatLng(23.776332873601195, 90.39394172190066));
    polylineCoordinates.add(LatLng(23.776847382866453, 90.39481629986943));
    polylineCoordinates.add(LatLng(23.77753339205376, 90.39597199218528));
    polylineCoordinates.add(LatLng(23.777933562408503, 90.39690904000895));
    polylineCoordinates.add(LatLng(23.778219397622276, 90.39747126870316));
    polylineCoordinates.add(LatLng(23.778062188332456, 90.39795541007872));
    polylineCoordinates.add(LatLng(23.777647726566478, 90.39818967203463));
    polylineCoordinates.add(LatLng(23.777247555332163, 90.39828337681699));
  }

  getCustomMarkerIcon(){
    BitmapDescriptor.fromAssetImage(ImageConfiguration(), 'images/marker.png').then((icon) => customeMarkerIcon = icon);
  }

  @override
  void initState() {
    getPolyPoints();
    getCurrentLocation();
    getCustomMarkerIcon();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Map'),
      ),
      body: currentLocation == null
          ? const Center(
        child: Text('Loading...'),
      )
          : Container(
        child: GoogleMap(
          initialCameraPosition: CameraPosition(
              target: LatLng(currentLocation!.latitude!,
                  currentLocation!.longitude!),
              zoom: 15),
          polylines: {
            Polyline(
                polylineId: PolylineId('route'),
                points: polylineCoordinates,
                color: Colors.indigoAccent,
                width: 6)
          },
          onMapCreated: (controller) {
            // mapController = controller;
            _controller.complete(controller);
            // addMarker('test', LatLng(23.7750037152448, 90.38991241625888));
          },
          //markers: _markers.values.toSet(),
          markers: {
            Marker(
                markerId: MarkerId('Source'),
                position: source,
                icon: customeMarkerIcon,
                infoWindow: InfoWindow(
                    title: 'Marker Source',
                    snippet: 'Source description')),
            Marker(
                markerId: MarkerId('Destination'),
                position: destination,
                icon: customeMarkerIcon,
                infoWindow: InfoWindow(
                    title: 'Destination',
                    snippet: 'Destination description')),
            Marker(
                markerId: MarkerId('DeviceLocation'),
                icon: customeMarkerIcon,
                position: LatLng(currentLocation!.latitude!,
                    currentLocation!.longitude!),
                infoWindow: InfoWindow(
                    title: 'DeviceLocation',
                    snippet: 'DeviceLocation description')),
          },
        ),
      ),
    );
  }

  addMarker(String markerId, LatLng location) async {
    var markerIcon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(), 'images/marker.png');

    var marker = Marker(
        markerId: MarkerId(markerId),
        position: location,
        infoWindow: InfoWindow(
            title: 'Marker title',
            snippet: 'Please your marker description here'),
        icon: markerIcon);
    _markers[markerId] = marker;
    setState(() {});
  }
}
