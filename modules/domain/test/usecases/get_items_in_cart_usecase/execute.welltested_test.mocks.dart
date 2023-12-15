// Mocks generated by Mockito 5.4.2 from annotations
// in domain/test/usecases/get_items_in_cart_usecase/execute.welltested_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:domain/models/cart_model.dart' as _i3;
import 'package:domain/usecases/get_items_in_cart_usecase.dart' as _i2;
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

/// A class which mocks [GetItemsInCartUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetItemsInCartUseCase extends _i1.Mock
    implements _i2.GetItemsInCartUseCase {
  MockGetItemsInCartUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  int execute(
    int? productId,
    List<_i3.Cart>? carts,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #execute,
          [
            productId,
            carts,
          ],
        ),
        returnValue: 0,
      ) as int);
}

/// A class which mocks [Cart].
///
/// See the documentation for Mockito's code generation for more information.
class MockCart extends _i1.Mock implements _i3.Cart {
  MockCart() {
    _i1.throwOnMissingStub(this);
  }

  @override
  int get productId => (super.noSuchMethod(
        Invocation.getter(#productId),
        returnValue: 0,
      ) as int);
  @override
  set productId(int? _productId) => super.noSuchMethod(
        Invocation.setter(
          #productId,
          _productId,
        ),
        returnValueForMissingStub: null,
      );
  @override
  String get image => (super.noSuchMethod(
        Invocation.getter(#image),
        returnValue: '',
      ) as String);
  @override
  set image(String? _image) => super.noSuchMethod(
        Invocation.setter(
          #image,
          _image,
        ),
        returnValueForMissingStub: null,
      );
  @override
  String get name => (super.noSuchMethod(
        Invocation.getter(#name),
        returnValue: '',
      ) as String);
  @override
  set name(String? _name) => super.noSuchMethod(
        Invocation.setter(
          #name,
          _name,
        ),
        returnValueForMissingStub: null,
      );
  @override
  String get unit => (super.noSuchMethod(
        Invocation.getter(#unit),
        returnValue: '',
      ) as String);
  @override
  set unit(String? _unit) => super.noSuchMethod(
        Invocation.setter(
          #unit,
          _unit,
        ),
        returnValueForMissingStub: null,
      );
  @override
  String get currency => (super.noSuchMethod(
        Invocation.getter(#currency),
        returnValue: '',
      ) as String);
  @override
  set currency(String? _currency) => super.noSuchMethod(
        Invocation.setter(
          #currency,
          _currency,
        ),
        returnValueForMissingStub: null,
      );
  @override
  num get currentPrice => (super.noSuchMethod(
        Invocation.getter(#currentPrice),
        returnValue: 0,
      ) as num);
  @override
  set currentPrice(num? _currentPrice) => super.noSuchMethod(
        Invocation.setter(
          #currentPrice,
          _currentPrice,
        ),
        returnValueForMissingStub: null,
      );
  @override
  num get quantityPerUnit => (super.noSuchMethod(
        Invocation.getter(#quantityPerUnit),
        returnValue: 0,
      ) as num);
  @override
  set quantityPerUnit(num? _quantityPerUnit) => super.noSuchMethod(
        Invocation.setter(
          #quantityPerUnit,
          _quantityPerUnit,
        ),
        returnValueForMissingStub: null,
      );
  @override
  int get numOfItems => (super.noSuchMethod(
        Invocation.getter(#numOfItems),
        returnValue: 0,
      ) as int);
  @override
  set numOfItems(int? _numOfItems) => super.noSuchMethod(
        Invocation.setter(
          #numOfItems,
          _numOfItems,
        ),
        returnValueForMissingStub: null,
      );
}
