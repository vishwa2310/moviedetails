import 'package:connectivity/connectivity.dart';

const String APPLICATION_NAME = "Movies Description";
const String ERROR = "Something went wrong";
const String RETRY = "Retry";
const String WAITINGFORDATA = "Waiting for data ...";

Future<bool> isInternet() async {
  var connectivityResult = await (Connectivity().checkConnectivity());

  if (connectivityResult == ConnectivityResult.mobile) {
    return true;
  } else if (connectivityResult == ConnectivityResult.wifi) {
    return true;
  } else if (connectivityResult == ConnectivityResult.none) {
    // Neither mobile data or WIFI detected, not internet connection found.
    return false;
  }

  return false;
}
