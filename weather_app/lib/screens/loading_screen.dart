import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/services/location.dart';
import 'package:weather_app/services/networking.dart';
import 'location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

const String apiKey = 'bcfe971de17298bfd1e3f43dd0f1ca76';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  LoadingScreenState createState() => LoadingScreenState();
}

class LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    _requestLocationPermission();
  }

  void _requestLocationPermission() async {
    // Request permission to access the device's location
    LocationPermission permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      // Handle denied permission
      if (kDebugMode) {
        print('Permission denied by user');
      }
    } else if (permission == LocationPermission.deniedForever) {
      // Handle denied permission forever
      if (kDebugMode) {
        print('Permission permanently denied by user');
      }
    } else {
      // Permission granted, fetch the location
      getLocationData();
    }
  }

  void getLocationData() async {
    Location location = Location();
    await location.getCurrentLocation();
    var latitude = location.latitude;
    var longitude = location.longitude;

    NetworkHelper networkHelper = NetworkHelper(
        'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey');

    var weatherData = await networkHelper.getData();

    navigateToLocationScreen();
  }

  void navigateToLocationScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LocationScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.blueGrey,
        ),
      ),
    );
  }
}
