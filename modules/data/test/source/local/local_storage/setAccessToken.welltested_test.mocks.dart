// Mocks generated by Mockito 5.4.2 from annotations
// in data/test/source/local/local_storage/setAccessToken.welltested_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:core/storage/prefrences_storage.dart' as _i2;
import 'package:core/storage/secure_storage.dart' as _i4;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

/// A class which mocks [PreferencesStorage].
///
/// See the documentation for Mockito's code generation for more information.
class MockPreferencesStorage extends _i1.Mock
    implements _i2.PreferencesStorage {
  MockPreferencesStorage() {
    _i1.throwOnMissingStub(this);
  }

  @override
  String getString(String? key) => (super.noSuchMethod(
        Invocation.method(
          #getString,
          [key],
        ),
        returnValue: '',
      ) as String);
  @override
  int getInt(String? key) => (super.noSuchMethod(
        Invocation.method(
          #getInt,
          [key],
        ),
        returnValue: 0,
      ) as int);
  @override
  num getDouble(String? key) => (super.noSuchMethod(
        Invocation.method(
          #getDouble,
          [key],
        ),
        returnValue: 0,
      ) as num);
  @override
  bool getBool(String? key) => (super.noSuchMethod(
        Invocation.method(
          #getBool,
          [key],
        ),
        returnValue: false,
      ) as bool);
  @override
  _i3.Future<void> setString(
    String? key,
    String? value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #setString,
          [
            key,
            value,
          ],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);
  @override
  _i3.Future<void> setInt(
    String? key,
    int? value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #setInt,
          [
            key,
            value,
          ],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);
  @override
  _i3.Future<void> setDouble(
    String? key,
    double? value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #setDouble,
          [
            key,
            value,
          ],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);
  @override
  _i3.Future<void> setBool(
    String? key,
    bool? value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #setBool,
          [
            key,
            value,
          ],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);
  @override
  _i3.Future<void> removePreference(String? key) => (super.noSuchMethod(
        Invocation.method(
          #removePreference,
          [key],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);
  @override
  List<String> getKeys() => (super.noSuchMethod(
        Invocation.method(
          #getKeys,
          [],
        ),
        returnValue: <String>[],
      ) as List<String>);
  @override
  _i3.Future<bool> clearAll() => (super.noSuchMethod(
        Invocation.method(
          #clearAll,
          [],
        ),
        returnValue: _i3.Future<bool>.value(false),
      ) as _i3.Future<bool>);
}

/// A class which mocks [SecureStorage].
///
/// See the documentation for Mockito's code generation for more information.
class MockSecureStorage extends _i1.Mock implements _i4.SecureStorage {
  MockSecureStorage() {
    _i1.throwOnMissingStub(this);
  }

  @override
  String secureGet(String? key) => (super.noSuchMethod(
        Invocation.method(
          #secureGet,
          [key],
        ),
        returnValue: '',
      ) as String);
  @override
  _i3.Future<dynamic> secureSet(
    String? key,
    String? value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #secureSet,
          [
            key,
            value,
          ],
        ),
        returnValue: _i3.Future<dynamic>.value(),
      ) as _i3.Future<dynamic>);
  @override
  _i3.Future<bool> clearAll() => (super.noSuchMethod(
        Invocation.method(
          #clearAll,
          [],
        ),
        returnValue: _i3.Future<bool>.value(false),
      ) as _i3.Future<bool>);
}
