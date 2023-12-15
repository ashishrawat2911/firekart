// Mocks generated by Mockito 5.4.2 from annotations
// in presentation/test/features/cart/view_model/cart_view_model/addAccountDetails.welltested_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:domain/models/account_details_model.dart' as _i10;
import 'package:domain/models/add_order_model.dart' as _i8;
import 'package:domain/models/cart_model.dart' as _i12;
import 'package:domain/models/network.dart' as _i6;
import 'package:domain/network_result/network_error.dart' as _i5;
import 'package:domain/usecases/delete_product_from_cart_usecase.dart' as _i3;
import 'package:domain/usecases/get_address_usecase.dart' as _i9;
import 'package:domain/usecases/get_cart_status_use_case.dart' as _i11;
import 'package:domain/usecases/place_order_usecase.dart' as _i7;
import 'package:domain/usecases/update_cart_usecase.dart' as _i13;
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

/// A class which mocks [ProductDeleteCartUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockProductDeleteCartUseCase extends _i1.Mock
    implements _i3.ProductDeleteCartUseCase {
  MockProductDeleteCartUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.NetworkError, _i6.EmptyEntity>> execute(
          int? productId) =>
      (super.noSuchMethod(
        Invocation.method(
          #execute,
          [productId],
        ),
        returnValue:
            _i4.Future<_i2.Either<_i5.NetworkError, _i6.EmptyEntity>>.value(
                _FakeEither_0<_i5.NetworkError, _i6.EmptyEntity>(
          this,
          Invocation.method(
            #execute,
            [productId],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.NetworkError, _i6.EmptyEntity>>);
}

/// A class which mocks [PlaceOrderUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockPlaceOrderUseCase extends _i1.Mock implements _i7.PlaceOrderUseCase {
  MockPlaceOrderUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.NetworkError, _i6.EmptyEntity>> execute(
          _i8.AddOrder? order) =>
      (super.noSuchMethod(
        Invocation.method(
          #execute,
          [order],
        ),
        returnValue:
            _i4.Future<_i2.Either<_i5.NetworkError, _i6.EmptyEntity>>.value(
                _FakeEither_0<_i5.NetworkError, _i6.EmptyEntity>(
          this,
          Invocation.method(
            #execute,
            [order],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.NetworkError, _i6.EmptyEntity>>);
}

/// A class which mocks [GetAddressUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetAddressUseCase extends _i1.Mock implements _i9.GetAddressUseCase {
  MockGetAddressUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.NetworkError, List<_i10.Address>>> execute() =>
      (super.noSuchMethod(
        Invocation.method(
          #execute,
          [],
        ),
        returnValue:
            _i4.Future<_i2.Either<_i5.NetworkError, List<_i10.Address>>>.value(
                _FakeEither_0<_i5.NetworkError, List<_i10.Address>>(
          this,
          Invocation.method(
            #execute,
            [],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.NetworkError, List<_i10.Address>>>);
}

/// A class which mocks [GetCartStatusUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetCartStatusUseCase extends _i1.Mock
    implements _i11.GetCartStatusUseCase {
  MockGetCartStatusUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.NetworkError, List<_i12.Cart>>> execute() =>
      (super.noSuchMethod(
        Invocation.method(
          #execute,
          [],
        ),
        returnValue:
            _i4.Future<_i2.Either<_i5.NetworkError, List<_i12.Cart>>>.value(
                _FakeEither_0<_i5.NetworkError, List<_i12.Cart>>(
          this,
          Invocation.method(
            #execute,
            [],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.NetworkError, List<_i12.Cart>>>);
  @override
  _i4.Stream<List<_i12.Cart>> watch() => (super.noSuchMethod(
        Invocation.method(
          #watch,
          [],
        ),
        returnValue: _i4.Stream<List<_i12.Cart>>.empty(),
      ) as _i4.Stream<List<_i12.Cart>>);
}

/// A class which mocks [UpdateCartUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockUpdateCartUseCase extends _i1.Mock implements _i13.UpdateCartUseCase {
  MockUpdateCartUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.NetworkError, _i6.EmptyEntity>> execute(
    int? productId,
    int? quantity,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #execute,
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
            #execute,
            [
              productId,
              quantity,
            ],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.NetworkError, _i6.EmptyEntity>>);
}
