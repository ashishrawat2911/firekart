// Mocks generated by Mockito 5.4.2 from annotations
// in domain/test/usecases/send_otp_usecase/loginWithOtp.welltested_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:domain/models/login.dart' as _i6;
import 'package:domain/models/network.dart' as _i7;
import 'package:domain/network_result/network_error.dart' as _i5;
import 'package:domain/repository/auth_repository.dart' as _i3;
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

class _FakeEither_0<L, R> extends _i1.SmartFake implements _i2.Either<L, R> {
  _FakeEither_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [AuthRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthRepository extends _i1.Mock implements _i3.AuthRepository {
  MockAuthRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  bool isLoggedIn() => (super.noSuchMethod(
        Invocation.method(
          #isLoggedIn,
          [],
        ),
        returnValue: false,
      ) as bool);
  @override
  _i4.Future<_i2.Either<_i5.NetworkError, _i6.Login>> login(
          String? phoneNumber) =>
      (super.noSuchMethod(
        Invocation.method(
          #login,
          [phoneNumber],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.NetworkError, _i6.Login>>.value(
            _FakeEither_0<_i5.NetworkError, _i6.Login>(
          this,
          Invocation.method(
            #login,
            [phoneNumber],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.NetworkError, _i6.Login>>);
  @override
  _i4.Future<_i2.Either<_i5.NetworkError, _i7.EmptyEntity>> verifyOtp(
    String? phoneNumber,
    String? smsCode, {
    String? name,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #verifyOtp,
          [
            phoneNumber,
            smsCode,
          ],
          {#name: name},
        ),
        returnValue:
            _i4.Future<_i2.Either<_i5.NetworkError, _i7.EmptyEntity>>.value(
                _FakeEither_0<_i5.NetworkError, _i7.EmptyEntity>(
          this,
          Invocation.method(
            #verifyOtp,
            [
              phoneNumber,
              smsCode,
            ],
            {#name: name},
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.NetworkError, _i7.EmptyEntity>>);
  @override
  _i4.Future<_i2.Either<_i5.NetworkError, _i7.EmptyEntity>> logout() =>
      (super.noSuchMethod(
        Invocation.method(
          #logout,
          [],
        ),
        returnValue:
            _i4.Future<_i2.Either<_i5.NetworkError, _i7.EmptyEntity>>.value(
                _FakeEither_0<_i5.NetworkError, _i7.EmptyEntity>(
          this,
          Invocation.method(
            #logout,
            [],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.NetworkError, _i7.EmptyEntity>>);
  @override
  _i4.Future<void> setDeviceToken(String? deviceToken) => (super.noSuchMethod(
        Invocation.method(
          #setDeviceToken,
          [deviceToken],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
}
