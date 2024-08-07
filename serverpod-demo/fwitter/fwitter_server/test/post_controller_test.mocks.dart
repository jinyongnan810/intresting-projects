// Mocks generated by Mockito 5.4.4 from annotations
// in fwitter_server/test/post_controller_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i6;

import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i7;
import 'package:serverpod/serverpod.dart' as _i2;
import 'package:serverpod/src/cache/caches.dart' as _i5;
import 'package:serverpod/src/database/database.dart' as _i4;
import 'package:serverpod/src/server/log_manager.dart' as _i3;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeServer_0 extends _i1.SmartFake implements _i2.Server {
  _FakeServer_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeSessionLogEntryCache_1 extends _i1.SmartFake
    implements _i3.SessionLogEntryCache {
  _FakeSessionLogEntryCache_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeStorageAccess_2 extends _i1.SmartFake implements _i2.StorageAccess {
  _FakeStorageAccess_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeMessageCentralAccess_3 extends _i1.SmartFake
    implements _i2.MessageCentralAccess {
  _FakeMessageCentralAccess_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeServerpod_4 extends _i1.SmartFake implements _i2.Serverpod {
  _FakeServerpod_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDateTime_5 extends _i1.SmartFake implements DateTime {
  _FakeDateTime_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDatabase_6 extends _i1.SmartFake implements _i4.Database {
  _FakeDatabase_6(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeCaches_7 extends _i1.SmartFake implements _i5.Caches {
  _FakeCaches_7(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDuration_8 extends _i1.SmartFake implements Duration {
  _FakeDuration_8(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeFuture_9<T1> extends _i1.SmartFake implements _i6.Future<T1> {
  _FakeFuture_9(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDatabaseResult_10 extends _i1.SmartFake
    implements _i2.DatabaseResult {
  _FakeDatabaseResult_10(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [Session].
///
/// See the documentation for Mockito's code generation for more information.
class MockSession extends _i1.Mock implements _i2.Session {
  @override
  _i2.Server get server => (super.noSuchMethod(
        Invocation.getter(#server),
        returnValue: _FakeServer_0(
          this,
          Invocation.getter(#server),
        ),
        returnValueForMissingStub: _FakeServer_0(
          this,
          Invocation.getter(#server),
        ),
      ) as _i2.Server);

  @override
  _i3.SessionLogEntryCache get sessionLogs => (super.noSuchMethod(
        Invocation.getter(#sessionLogs),
        returnValue: _FakeSessionLogEntryCache_1(
          this,
          Invocation.getter(#sessionLogs),
        ),
        returnValueForMissingStub: _FakeSessionLogEntryCache_1(
          this,
          Invocation.getter(#sessionLogs),
        ),
      ) as _i3.SessionLogEntryCache);

  @override
  set sessionLogs(_i3.SessionLogEntryCache? _sessionLogs) => super.noSuchMethod(
        Invocation.setter(
          #sessionLogs,
          _sessionLogs,
        ),
        returnValueForMissingStub: null,
      );

  @override
  set userObject(dynamic _userObject) => super.noSuchMethod(
        Invocation.setter(
          #userObject,
          _userObject,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i2.StorageAccess get storage => (super.noSuchMethod(
        Invocation.getter(#storage),
        returnValue: _FakeStorageAccess_2(
          this,
          Invocation.getter(#storage),
        ),
        returnValueForMissingStub: _FakeStorageAccess_2(
          this,
          Invocation.getter(#storage),
        ),
      ) as _i2.StorageAccess);

  @override
  set storage(_i2.StorageAccess? _storage) => super.noSuchMethod(
        Invocation.setter(
          #storage,
          _storage,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i2.MessageCentralAccess get messages => (super.noSuchMethod(
        Invocation.getter(#messages),
        returnValue: _FakeMessageCentralAccess_3(
          this,
          Invocation.getter(#messages),
        ),
        returnValueForMissingStub: _FakeMessageCentralAccess_3(
          this,
          Invocation.getter(#messages),
        ),
      ) as _i2.MessageCentralAccess);

  @override
  set messages(_i2.MessageCentralAccess? _messages) => super.noSuchMethod(
        Invocation.setter(
          #messages,
          _messages,
        ),
        returnValueForMissingStub: null,
      );

  @override
  bool get enableLogging => (super.noSuchMethod(
        Invocation.getter(#enableLogging),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);

  @override
  _i2.Serverpod get serverpod => (super.noSuchMethod(
        Invocation.getter(#serverpod),
        returnValue: _FakeServerpod_4(
          this,
          Invocation.getter(#serverpod),
        ),
        returnValueForMissingStub: _FakeServerpod_4(
          this,
          Invocation.getter(#serverpod),
        ),
      ) as _i2.Serverpod);

  @override
  DateTime get startTime => (super.noSuchMethod(
        Invocation.getter(#startTime),
        returnValue: _FakeDateTime_5(
          this,
          Invocation.getter(#startTime),
        ),
        returnValueForMissingStub: _FakeDateTime_5(
          this,
          Invocation.getter(#startTime),
        ),
      ) as DateTime);

  @override
  _i6.Future<_i2.AuthenticationInfo?> get authenticated => (super.noSuchMethod(
        Invocation.getter(#authenticated),
        returnValue: _i6.Future<_i2.AuthenticationInfo?>.value(),
        returnValueForMissingStub: _i6.Future<_i2.AuthenticationInfo?>.value(),
      ) as _i6.Future<_i2.AuthenticationInfo?>);

  @override
  _i6.Future<bool> get isUserSignedIn => (super.noSuchMethod(
        Invocation.getter(#isUserSignedIn),
        returnValue: _i6.Future<bool>.value(false),
        returnValueForMissingStub: _i6.Future<bool>.value(false),
      ) as _i6.Future<bool>);

  @override
  _i4.Database get db => (super.noSuchMethod(
        Invocation.getter(#db),
        returnValue: _FakeDatabase_6(
          this,
          Invocation.getter(#db),
        ),
        returnValueForMissingStub: _FakeDatabase_6(
          this,
          Invocation.getter(#db),
        ),
      ) as _i4.Database);

  @override
  _i5.Caches get caches => (super.noSuchMethod(
        Invocation.getter(#caches),
        returnValue: _FakeCaches_7(
          this,
          Invocation.getter(#caches),
        ),
        returnValueForMissingStub: _FakeCaches_7(
          this,
          Invocation.getter(#caches),
        ),
      ) as _i5.Caches);

  @override
  Map<String, String> get passwords => (super.noSuchMethod(
        Invocation.getter(#passwords),
        returnValue: <String, String>{},
        returnValueForMissingStub: <String, String>{},
      ) as Map<String, String>);

  @override
  Duration get duration => (super.noSuchMethod(
        Invocation.getter(#duration),
        returnValue: _FakeDuration_8(
          this,
          Invocation.getter(#duration),
        ),
        returnValueForMissingStub: _FakeDuration_8(
          this,
          Invocation.getter(#duration),
        ),
      ) as Duration);

  @override
  void updateAuthenticated(_i2.AuthenticationInfo? info) => super.noSuchMethod(
        Invocation.method(
          #updateAuthenticated,
          [info],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i6.Future<int?> close({
    dynamic error,
    StackTrace? stackTrace,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #close,
          [],
          {
            #error: error,
            #stackTrace: stackTrace,
          },
        ),
        returnValue: _i6.Future<int?>.value(),
        returnValueForMissingStub: _i6.Future<int?>.value(),
      ) as _i6.Future<int?>);

  @override
  void log(
    String? message, {
    _i2.LogLevel? level,
    dynamic exception,
    StackTrace? stackTrace,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #log,
          [message],
          {
            #level: level,
            #exception: exception,
            #stackTrace: stackTrace,
          },
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [Database].
///
/// See the documentation for Mockito's code generation for more information.
class MockDatabase extends _i1.Mock implements _i4.Database {
  @override
  _i6.Future<List<T>> find<T extends _i2.TableRow>({
    _i2.Expression<dynamic>? where,
    int? limit,
    int? offset,
    _i2.Column<dynamic>? orderBy,
    List<_i2.Order>? orderByList,
    bool? orderDescending = false,
    _i2.Transaction? transaction,
    _i2.Include? include,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #find,
          [],
          {
            #where: where,
            #limit: limit,
            #offset: offset,
            #orderBy: orderBy,
            #orderByList: orderByList,
            #orderDescending: orderDescending,
            #transaction: transaction,
            #include: include,
          },
        ),
        returnValue: _i6.Future<List<T>>.value(<T>[]),
        returnValueForMissingStub: _i6.Future<List<T>>.value(<T>[]),
      ) as _i6.Future<List<T>>);

  @override
  _i6.Future<T?> findFirstRow<T extends _i2.TableRow>({
    _i2.Expression<dynamic>? where,
    int? offset,
    _i2.Column<dynamic>? orderBy,
    List<_i2.Order>? orderByList,
    bool? orderDescending = false,
    _i2.Transaction? transaction,
    _i2.Include? include,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #findFirstRow,
          [],
          {
            #where: where,
            #offset: offset,
            #orderBy: orderBy,
            #orderByList: orderByList,
            #orderDescending: orderDescending,
            #transaction: transaction,
            #include: include,
          },
        ),
        returnValue: _i6.Future<T?>.value(),
        returnValueForMissingStub: _i6.Future<T?>.value(),
      ) as _i6.Future<T?>);

  @override
  _i6.Future<T?> findById<T extends _i2.TableRow>(
    int? id, {
    _i2.Transaction? transaction,
    _i2.Include? include,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #findById,
          [id],
          {
            #transaction: transaction,
            #include: include,
          },
        ),
        returnValue: _i6.Future<T?>.value(),
        returnValueForMissingStub: _i6.Future<T?>.value(),
      ) as _i6.Future<T?>);

  @override
  _i6.Future<List<T>> update<T extends _i2.TableRow>(
    List<T>? rows, {
    List<_i2.Column<dynamic>>? columns,
    _i2.Transaction? transaction,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #update,
          [rows],
          {
            #columns: columns,
            #transaction: transaction,
          },
        ),
        returnValue: _i6.Future<List<T>>.value(<T>[]),
        returnValueForMissingStub: _i6.Future<List<T>>.value(<T>[]),
      ) as _i6.Future<List<T>>);

  @override
  _i6.Future<T> updateRow<T extends _i2.TableRow>(
    T? row, {
    List<_i2.Column<dynamic>>? columns,
    _i2.Transaction? transaction,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateRow,
          [row],
          {
            #columns: columns,
            #transaction: transaction,
          },
        ),
        returnValue: _i7.ifNotNull(
              _i7.dummyValueOrNull<T>(
                this,
                Invocation.method(
                  #updateRow,
                  [row],
                  {
                    #columns: columns,
                    #transaction: transaction,
                  },
                ),
              ),
              (T v) => _i6.Future<T>.value(v),
            ) ??
            _FakeFuture_9<T>(
              this,
              Invocation.method(
                #updateRow,
                [row],
                {
                  #columns: columns,
                  #transaction: transaction,
                },
              ),
            ),
        returnValueForMissingStub: _i7.ifNotNull(
              _i7.dummyValueOrNull<T>(
                this,
                Invocation.method(
                  #updateRow,
                  [row],
                  {
                    #columns: columns,
                    #transaction: transaction,
                  },
                ),
              ),
              (T v) => _i6.Future<T>.value(v),
            ) ??
            _FakeFuture_9<T>(
              this,
              Invocation.method(
                #updateRow,
                [row],
                {
                  #columns: columns,
                  #transaction: transaction,
                },
              ),
            ),
      ) as _i6.Future<T>);

  @override
  _i6.Future<List<T>> insert<T extends _i2.TableRow>(
    List<T>? rows, {
    _i2.Transaction? transaction,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #insert,
          [rows],
          {#transaction: transaction},
        ),
        returnValue: _i6.Future<List<T>>.value(<T>[]),
        returnValueForMissingStub: _i6.Future<List<T>>.value(<T>[]),
      ) as _i6.Future<List<T>>);

  @override
  _i6.Future<T> insertRow<T extends _i2.TableRow>(
    T? row, {
    _i2.Transaction? transaction,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #insertRow,
          [row],
          {#transaction: transaction},
        ),
        returnValue: _i7.ifNotNull(
              _i7.dummyValueOrNull<T>(
                this,
                Invocation.method(
                  #insertRow,
                  [row],
                  {#transaction: transaction},
                ),
              ),
              (T v) => _i6.Future<T>.value(v),
            ) ??
            _FakeFuture_9<T>(
              this,
              Invocation.method(
                #insertRow,
                [row],
                {#transaction: transaction},
              ),
            ),
        returnValueForMissingStub: _i7.ifNotNull(
              _i7.dummyValueOrNull<T>(
                this,
                Invocation.method(
                  #insertRow,
                  [row],
                  {#transaction: transaction},
                ),
              ),
              (T v) => _i6.Future<T>.value(v),
            ) ??
            _FakeFuture_9<T>(
              this,
              Invocation.method(
                #insertRow,
                [row],
                {#transaction: transaction},
              ),
            ),
      ) as _i6.Future<T>);

  @override
  _i6.Future<List<T>> delete<T extends _i2.TableRow>(
    List<T>? rows, {
    _i2.Transaction? transaction,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #delete,
          [rows],
          {#transaction: transaction},
        ),
        returnValue: _i6.Future<List<T>>.value(<T>[]),
        returnValueForMissingStub: _i6.Future<List<T>>.value(<T>[]),
      ) as _i6.Future<List<T>>);

  @override
  _i6.Future<T> deleteRow<T extends _i2.TableRow>(
    T? row, {
    _i2.Transaction? transaction,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteRow,
          [row],
          {#transaction: transaction},
        ),
        returnValue: _i7.ifNotNull(
              _i7.dummyValueOrNull<T>(
                this,
                Invocation.method(
                  #deleteRow,
                  [row],
                  {#transaction: transaction},
                ),
              ),
              (T v) => _i6.Future<T>.value(v),
            ) ??
            _FakeFuture_9<T>(
              this,
              Invocation.method(
                #deleteRow,
                [row],
                {#transaction: transaction},
              ),
            ),
        returnValueForMissingStub: _i7.ifNotNull(
              _i7.dummyValueOrNull<T>(
                this,
                Invocation.method(
                  #deleteRow,
                  [row],
                  {#transaction: transaction},
                ),
              ),
              (T v) => _i6.Future<T>.value(v),
            ) ??
            _FakeFuture_9<T>(
              this,
              Invocation.method(
                #deleteRow,
                [row],
                {#transaction: transaction},
              ),
            ),
      ) as _i6.Future<T>);

  @override
  _i6.Future<List<T>> deleteWhere<T extends _i2.TableRow>({
    required _i2.Expression<dynamic>? where,
    _i2.Transaction? transaction,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteWhere,
          [],
          {
            #where: where,
            #transaction: transaction,
          },
        ),
        returnValue: _i6.Future<List<T>>.value(<T>[]),
        returnValueForMissingStub: _i6.Future<List<T>>.value(<T>[]),
      ) as _i6.Future<List<T>>);

  @override
  _i6.Future<int> count<T extends _i2.TableRow>({
    _i2.Expression<dynamic>? where,
    int? limit,
    bool? useCache = true,
    _i2.Transaction? transaction,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #count,
          [],
          {
            #where: where,
            #limit: limit,
            #useCache: useCache,
            #transaction: transaction,
          },
        ),
        returnValue: _i6.Future<int>.value(0),
        returnValueForMissingStub: _i6.Future<int>.value(0),
      ) as _i6.Future<int>);

  @override
  _i6.Future<_i2.DatabaseResult> unsafeQuery(
    String? query, {
    int? timeoutInSeconds,
    _i2.Transaction? transaction,
    _i2.QueryParameters? parameters,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #unsafeQuery,
          [query],
          {
            #timeoutInSeconds: timeoutInSeconds,
            #transaction: transaction,
            #parameters: parameters,
          },
        ),
        returnValue:
            _i6.Future<_i2.DatabaseResult>.value(_FakeDatabaseResult_10(
          this,
          Invocation.method(
            #unsafeQuery,
            [query],
            {
              #timeoutInSeconds: timeoutInSeconds,
              #transaction: transaction,
              #parameters: parameters,
            },
          ),
        )),
        returnValueForMissingStub:
            _i6.Future<_i2.DatabaseResult>.value(_FakeDatabaseResult_10(
          this,
          Invocation.method(
            #unsafeQuery,
            [query],
            {
              #timeoutInSeconds: timeoutInSeconds,
              #transaction: transaction,
              #parameters: parameters,
            },
          ),
        )),
      ) as _i6.Future<_i2.DatabaseResult>);

  @override
  _i6.Future<int> unsafeExecute(
    String? query, {
    int? timeoutInSeconds,
    _i2.Transaction? transaction,
    _i2.QueryParameters? parameters,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #unsafeExecute,
          [query],
          {
            #timeoutInSeconds: timeoutInSeconds,
            #transaction: transaction,
            #parameters: parameters,
          },
        ),
        returnValue: _i6.Future<int>.value(0),
        returnValueForMissingStub: _i6.Future<int>.value(0),
      ) as _i6.Future<int>);

  @override
  _i6.Future<_i2.DatabaseResult> unsafeSimpleQuery(
    String? query, {
    int? timeoutInSeconds,
    _i2.Transaction? transaction,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #unsafeSimpleQuery,
          [query],
          {
            #timeoutInSeconds: timeoutInSeconds,
            #transaction: transaction,
          },
        ),
        returnValue:
            _i6.Future<_i2.DatabaseResult>.value(_FakeDatabaseResult_10(
          this,
          Invocation.method(
            #unsafeSimpleQuery,
            [query],
            {
              #timeoutInSeconds: timeoutInSeconds,
              #transaction: transaction,
            },
          ),
        )),
        returnValueForMissingStub:
            _i6.Future<_i2.DatabaseResult>.value(_FakeDatabaseResult_10(
          this,
          Invocation.method(
            #unsafeSimpleQuery,
            [query],
            {
              #timeoutInSeconds: timeoutInSeconds,
              #transaction: transaction,
            },
          ),
        )),
      ) as _i6.Future<_i2.DatabaseResult>);

  @override
  _i6.Future<int> unsafeSimpleExecute(
    String? query, {
    int? timeoutInSeconds,
    _i2.Transaction? transaction,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #unsafeSimpleExecute,
          [query],
          {
            #timeoutInSeconds: timeoutInSeconds,
            #transaction: transaction,
          },
        ),
        returnValue: _i6.Future<int>.value(0),
        returnValueForMissingStub: _i6.Future<int>.value(0),
      ) as _i6.Future<int>);

  @override
  _i6.Future<R> transaction<R>(
          _i2.TransactionFunction<R>? transactionFunction) =>
      (super.noSuchMethod(
        Invocation.method(
          #transaction,
          [transactionFunction],
        ),
        returnValue: _i7.ifNotNull(
              _i7.dummyValueOrNull<R>(
                this,
                Invocation.method(
                  #transaction,
                  [transactionFunction],
                ),
              ),
              (R v) => _i6.Future<R>.value(v),
            ) ??
            _FakeFuture_9<R>(
              this,
              Invocation.method(
                #transaction,
                [transactionFunction],
              ),
            ),
        returnValueForMissingStub: _i7.ifNotNull(
              _i7.dummyValueOrNull<R>(
                this,
                Invocation.method(
                  #transaction,
                  [transactionFunction],
                ),
              ),
              (R v) => _i6.Future<R>.value(v),
            ) ??
            _FakeFuture_9<R>(
              this,
              Invocation.method(
                #transaction,
                [transactionFunction],
              ),
            ),
      ) as _i6.Future<R>);

  @override
  _i6.Future<bool> testConnection() => (super.noSuchMethod(
        Invocation.method(
          #testConnection,
          [],
        ),
        returnValue: _i6.Future<bool>.value(false),
        returnValueForMissingStub: _i6.Future<bool>.value(false),
      ) as _i6.Future<bool>);
}
