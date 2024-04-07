// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:fwitter_client/fwitter_client.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:serverpod_auth_shared_flutter/serverpod_auth_shared_flutter.dart'
    as _i5;

import 'data/post_repository.dart' as _i4;
import 'fwitter_client_module.dart' as _i6;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final fwitterClientModule = _$FwitterClientModule();
    gh.lazySingleton<_i3.Client>(() => fwitterClientModule.client);
    gh.singleton<_i4.PostRepository>(
        () => _i4.PostRepository(gh<_i3.Client>()));
    gh.lazySingleton<_i5.SessionManager>(
        () => fwitterClientModule.sessionManager);
    return this;
  }
}

class _$FwitterClientModule extends _i6.FwitterClientModule {}
