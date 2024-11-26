import 'package:wildlife_api_connection/api_client.dart';
import 'package:latlong2/latlong.dart';

class TrackingApi {
  final ApiClient client;

  TrackingApi(this.client);

  Future<void> sendTrackingReading(LatLng location) async {
    await client.post(
      'tracking-reading/',
      {
        'location': {
          'latitude': location.latitude,
          'longitude': location.longitude,
        },
        'timestamp': DateTime.now().toIso8601String(),
      },
      authenticated: true,
    );
  }
}
