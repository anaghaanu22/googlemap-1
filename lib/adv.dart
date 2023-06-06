import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AdventureMapScreen extends StatefulWidget {
  const AdventureMapScreen({Key? key}) : super(key: key);

  @override
  _AdventureMapScreenState createState() => _AdventureMapScreenState();
}

class _AdventureMapScreenState extends State<AdventureMapScreen> {
  late GoogleMapController googleMapController;

  static const CameraPosition initialCameraPosition = CameraPosition(
    target: LatLng(10.1632, 76.6413),
    zoom: 8,
  );

  Set<Marker> markers = {
    Marker(
      markerId: MarkerId('1'),
      position: LatLng(11.6016, 75.5920),
      infoWindow: InfoWindow(title: 'Adventure Spot 1'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    ),
    Marker(
      markerId: MarkerId('2'),
      position: LatLng(11.4535, 75.7335),
      infoWindow: InfoWindow(title: 'Adventure Spot 2'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    ),
     Marker(
      markerId: MarkerId('3'),
      position: LatLng(8.400734, 76.978124),
      infoWindow: InfoWindow(title: 'Adventure Spot 3'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    ),
     Marker(
      markerId: MarkerId('4'),
      position: LatLng(9.6862, 76.9052),
      infoWindow: InfoWindow(title: 'Adventure Spot 4'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    ),
     Marker(
      markerId: MarkerId('5'),
      position: LatLng(11.5118, 76.0887),
      infoWindow: InfoWindow(title: 'Adventure Spot 5'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    ),
     Marker(
      markerId: MarkerId('6'),
      position: LatLng(9.6031, 77.1615),
      infoWindow: InfoWindow(title: 'Adventure Spot 6'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    ),
     Marker(
      markerId: MarkerId('7'),
      position: LatLng(18.4497, 83.6608),
      infoWindow: InfoWindow(title: 'Adventure Spot 7'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    ),
     Marker(
      markerId: MarkerId('8'),
      position: LatLng(11.0481, 76.0831),
      infoWindow: InfoWindow(title: 'Adventure Spot 8'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    ),
     Marker(
      markerId: MarkerId('9'),
      position: LatLng(10.1416, 76.1783),
      infoWindow: InfoWindow(title: 'Adventure Spot 9'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    ),
     Marker(
      markerId: MarkerId('10'),
      position: LatLng(12.2728, 75.3672),
      infoWindow: InfoWindow(title: 'Adventure Spot 10'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    ),
    // Add more markers here as needed
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
                backgroundColor: Color.fromARGB(255, 232, 153, 148),

        title: const Text('Adventure Spots'),
        centerTitle: true,
      ),
      body: GoogleMap(
        initialCameraPosition: initialCameraPosition,
        markers: markers,
        onMapCreated: (GoogleMapController controller) {
          googleMapController = controller;
        },
      ),
    );
  }
}
