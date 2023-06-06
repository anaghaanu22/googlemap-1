import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Nature extends StatefulWidget {
  const Nature({Key? key}) : super(key: key);

  @override
  _NatureState createState() => _NatureState();
}

class _NatureState extends State<Nature> {
  late GoogleMapController googleMapController;

  static const CameraPosition initialCameraPosition = CameraPosition(
    target: LatLng(10.1632, 76.6413),
    zoom: 8,
  );

  Set<Marker> markers = {
    Marker(
      markerId: MarkerId('1'),
      position: LatLng(10.0889, 77.0595),
      infoWindow: InfoWindow(title: 'Munnar'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    ),
    Marker(
      markerId: MarkerId('2'),
      position: LatLng(11.6850, 76.1194),
      infoWindow: InfoWindow(title: 'Wayanad'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    ),
     Marker(
      markerId: MarkerId('3'),
      position: LatLng(10.2866,  76.5658),
      infoWindow: InfoWindow(title: 'Athirapally Falls'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    ),
     Marker(
      markerId: MarkerId('4'),
      position: LatLng(9.6983, 76.9426),
      infoWindow: InfoWindow(title: 'Vagamon'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    ),
     Marker(
      markerId: MarkerId('5'),
      position: LatLng(10.1881916,77.4251537),
      infoWindow: InfoWindow(title: 'Silentvalley view point'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    ),
     Marker(
      markerId: MarkerId('6'),
      position: LatLng(11.6682297,76.3691707),
      infoWindow: InfoWindow(title: 'Muthanga'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    ),
     Marker(
      markerId: MarkerId('7'),
      position: LatLng(9.6194,76.4030),
      infoWindow: InfoWindow(title: 'Kumarakam'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    ),
     Marker(
      markerId: MarkerId('8'),
      position: LatLng(10.1102,76.5872),
      infoWindow: InfoWindow(title: 'Thattekkad'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    ),
     Marker(
      markerId: MarkerId('9'),
      position: LatLng(9.6234,76.2733),
      infoWindow: InfoWindow(title: 'Marari Beach'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    ),
     Marker(
      markerId: MarkerId('10'),
      position: LatLng(10.4691,76.8057),
      infoWindow: InfoWindow(title: 'Parambikkulam'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    ),
     Marker(
      markerId: MarkerId('11'),
      position: LatLng(76.8057,76.9784),
      infoWindow: InfoWindow(title: 'Kovalam'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    ),
     Marker(
      markerId: MarkerId('12'),
      position: LatLng(8.5953507,76.7534052),
      infoWindow: InfoWindow(title: 'Adventure Spot 12'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    ),
     Marker(
      markerId: MarkerId('13'),
      position: LatLng(11.4953, 76.0512),
      infoWindow: InfoWindow(title: 'Soochippara'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    ),
     Marker(
      markerId: MarkerId('14'),
      position: LatLng(9.4981,76.3388),
      infoWindow: InfoWindow(title: 'Alleppy'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    ),
     Marker(
      markerId: MarkerId('15'),
      position: LatLng(11.6187,76.0783),
      infoWindow: InfoWindow(title: 'Pookkod'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    ),
      Marker(
      markerId: MarkerId('16'),
      position: LatLng(9.6001,77.1606),
      infoWindow: InfoWindow(title: 'Thekkadi'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    ),

    // Add more markers here as needed
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
                backgroundColor: Color.fromARGB(255, 232, 153, 148),

        title: const Text('Nature Attractions'),
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
