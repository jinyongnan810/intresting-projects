import 'package:fwitter_client/fwitter_client.dart';
import 'package:injectable/injectable.dart';
import 'package:serverpod_auth_shared_flutter/serverpod_auth_shared_flutter.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

@module
abstract class FwitterClientModule {
  @lazySingleton
  Client get client => Client(
        'http://$localhost:8080/',
        authenticationKeyManager: FlutterAuthenticationKeyManager(),
      )..connectivityMonitor = FlutterConnectivityMonitor();
  @lazySingleton
  SessionManager get sessionManager => SessionManager(
        caller: client.modules.auth,
      );
}
