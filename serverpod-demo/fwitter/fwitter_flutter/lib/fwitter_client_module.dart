import 'package:fwitter_client/fwitter_client.dart';
import 'package:injectable/injectable.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

@module
abstract class FwitterClientModule {
  Client get client => Client('http://$localhost:8080/')
    ..connectivityMonitor = FlutterConnectivityMonitor();
}
