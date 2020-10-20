// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'all_products_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AllProductStateTearOff {
  const _$AllProductStateTearOff();

// ignore: unused_element
  ProductLoading productLoading() {
    return const ProductLoading();
  }
}

/// @nodoc
// ignore: unused_element
const $AllProductState = _$AllProductStateTearOff();

/// @nodoc
mixin _$AllProductState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result productLoading(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result productLoading(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result productLoading(ProductLoading value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result productLoading(ProductLoading value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $AllProductStateCopyWith<$Res> {
  factory $AllProductStateCopyWith(
          AllProductState value, $Res Function(AllProductState) then) =
      _$AllProductStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AllProductStateCopyWithImpl<$Res>
    implements $AllProductStateCopyWith<$Res> {
  _$AllProductStateCopyWithImpl(this._value, this._then);

  final AllProductState _value;
  // ignore: unused_field
  final $Res Function(AllProductState) _then;
}

/// @nodoc
abstract class $ProductLoadingCopyWith<$Res> {
  factory $ProductLoadingCopyWith(
          ProductLoading value, $Res Function(ProductLoading) then) =
      _$ProductLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductLoadingCopyWithImpl<$Res>
    extends _$AllProductStateCopyWithImpl<$Res>
    implements $ProductLoadingCopyWith<$Res> {
  _$ProductLoadingCopyWithImpl(
      ProductLoading _value, $Res Function(ProductLoading) _then)
      : super(_value, (v) => _then(v as ProductLoading));

  @override
  ProductLoading get _value => super._value as ProductLoading;
}

/// @nodoc
class _$ProductLoading implements ProductLoading {
  const _$ProductLoading();

  @override
  String toString() {
    return 'AllProductState.productLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ProductLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result productLoading(),
  }) {
    assert(productLoading != null);
    return productLoading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result productLoading(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (productLoading != null) {
      return productLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result productLoading(ProductLoading value),
  }) {
    assert(productLoading != null);
    return productLoading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result productLoading(ProductLoading value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (productLoading != null) {
      return productLoading(this);
    }
    return orElse();
  }
}

abstract class ProductLoading implements AllProductState {
  const factory ProductLoading() = _$ProductLoading;
}
