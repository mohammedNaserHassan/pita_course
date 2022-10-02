import 'package:flutter/material.dart';
import 'package:google_maps_widget/google_maps_widget.dart';

class MapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Google Map Widget')),
      body: SafeArea(
        child: GoogleMapsWidget(
          apiKey: "AIzaSyDFG7hjhXBcTddBfhn0Lnf9u9mu47rxTDM",
          sourceLatLng: LatLng(40.484000837597925, -3.369978368282318),
          destinationLatLng: LatLng(40.48017307700204, -3.3618026599287987),
          routeWidth: 2,
          sourceMarkerIconInfo: MarkerIconInfo(
            assetPath: "assets/images/house-marker-icon.png",
          ),
          destinationMarkerIconInfo: MarkerIconInfo(
            assetPath: "assets/images/restaurant-marker-icon.png",
          ),
          driverMarkerIconInfo: MarkerIconInfo(
            assetPath: "assets/images/driver-marker-icon.png",
            assetMarkerSize: Size.square(125),
            rotation: 15.0,

            // ... and more
          ),
          // mock stream
          driverCoordinatesStream: Stream.periodic(
            Duration(milliseconds: 500),
            (i) => LatLng(
              40.47747872288886 + i / 10000,
              -3.368043154478073 - i / 10000,
            ),
          ),
          updatePolylinesOnDriverLocUpdate: true,
          sourceName: "This is source name",
          driverName: "Alex",
          onTapDriverMarker: (currentLocation) {
            print("Driver is currently at $currentLocation");
          },
          totalTimeCallback: (time) => print(time),
          totalDistanceCallback: (distance) => print(distance),

          /// and a lot more...
        ),
      ),
    );
  }
}
