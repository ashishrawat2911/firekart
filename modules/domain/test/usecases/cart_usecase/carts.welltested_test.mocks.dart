// Mocks generated by Mockito 5.4.2 from annotations
// in domain/test/usecases/cart_usecase/carts.welltested_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:domain/models/cart_model.dart' as _i7;
import 'package:domain/models/network.dart' as _i6;
import 'package:domain/network_result/network_error.dart' as _i5;
import 'package:domain/repository/cart_repository.dart' as _i3;
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

/// A class which mocks [CartRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockCartRepository extends _i1.Mock implements _i3.CartRepository {
  MockCartRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.NetworkError, _i6.EmptyEntity>> addProductToCart(
          int? productId) =>
      (super.noSuchMethod(
        Invocation.method(
          #addProductToCart,
          [productId],
        ),
        returnValue:
            _i4.Future<_i2.Either<_i5.NetworkError, _i6.EmptyEntity>>.value(
                _FakeEither_0<_i5.NetworkError, _i6.EmptyEntity>(
          this,
          Invocation.method(
            #addProductToCart,
            [productId],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.NetworkError, _i6.EmptyEntity>>);
  @override
  _i4.Future<_i2.Either<_i5.NetworkError, _i6.EmptyEntity>> updateCart(
    int? productId,
    int? quantity,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateCart,
          [
            productId,
            quantity,
          ],
        ),
        returnValue:
            _i4.Future<_i2.Either<_i5.NetworkError, _i6.EmptyEntity>>.value(
                _FakeEither_0<_i5.NetworkError, _i6.EmptyEntity>(
          this,
          Invocation.method(
            #updateCart,
            [
              productId,
              quantity,
            ],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.NetworkError, _i6.EmptyEntity>>);
  @override
  _i4.Future<_i2.Either<_i5.NetworkError, _i6.EmptyEntity>> deleteFromCart(
          int? productId) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteFromCart,
          [productId],
        ),
        returnValue:
            _i4.Future<_i2.Either<_i5.NetworkError, _i6.EmptyEntity>>.value(
                _FakeEither_0<_i5.NetworkError, _i6.EmptyEntity>(
          this,
          Invocation.method(
            #deleteFromCart,
            [productId],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.NetworkError, _i6.EmptyEntity>>);
  @override
  _i4.Future<_i2.Either<_i5.NetworkError, List<_i7.Cart>>> getCarts() =>
      (super.noSuchMethod(
        Invocation.method(
          #getCarts,
          [],
        ),
        returnValue:
            _i4.Future<_i2.Either<_i5.NetworkError, List<_i7.Cart>>>.value(
                _FakeEither_0<_i5.NetworkError, List<_i7.Cart>>(
          this,
          Invocation.method(
            #getCarts,
            [],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.NetworkError, List<_i7.Cart>>>);
  @override
  _i4.Stream<List<_i7.Cart>> watchCarts() => (super.noSuchMethod(
        Invocation.method(
          #watchCarts,
          [],
        ),
        returnValue: _i4.Stream<List<_i7.Cart>>.empty(),
      ) as _i4.Stream<List<_i7.Cart>>);
}
