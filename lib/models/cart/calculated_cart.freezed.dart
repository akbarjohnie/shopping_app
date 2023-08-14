// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calculated_cart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CalculatedCartModel _$CalculatedCartModelFromJson(Map<String, dynamic> json) {
  return _CalculatedCartModel.fromJson(json);
}

/// @nodoc
mixin _$CalculatedCartModel {
  String get price => throw _privateConstructorUsedError;
  String? get oldPrice => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  List<CartProduct> get products => throw _privateConstructorUsedError;
  bool? get applied => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalculatedCartModelCopyWith<CalculatedCartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculatedCartModelCopyWith<$Res> {
  factory $CalculatedCartModelCopyWith(
          CalculatedCartModel value, $Res Function(CalculatedCartModel) then) =
      _$CalculatedCartModelCopyWithImpl<$Res, CalculatedCartModel>;
  @useResult
  $Res call(
      {String price,
      String? oldPrice,
      int count,
      List<CartProduct> products,
      bool? applied});
}

/// @nodoc
class _$CalculatedCartModelCopyWithImpl<$Res, $Val extends CalculatedCartModel>
    implements $CalculatedCartModelCopyWith<$Res> {
  _$CalculatedCartModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? oldPrice = freezed,
    Object? count = null,
    Object? products = null,
    Object? applied = freezed,
  }) {
    return _then(_value.copyWith(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<CartProduct>,
      applied: freezed == applied
          ? _value.applied
          : applied // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CalculatedCartModelCopyWith<$Res>
    implements $CalculatedCartModelCopyWith<$Res> {
  factory _$$_CalculatedCartModelCopyWith(_$_CalculatedCartModel value,
          $Res Function(_$_CalculatedCartModel) then) =
      __$$_CalculatedCartModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String price,
      String? oldPrice,
      int count,
      List<CartProduct> products,
      bool? applied});
}

/// @nodoc
class __$$_CalculatedCartModelCopyWithImpl<$Res>
    extends _$CalculatedCartModelCopyWithImpl<$Res, _$_CalculatedCartModel>
    implements _$$_CalculatedCartModelCopyWith<$Res> {
  __$$_CalculatedCartModelCopyWithImpl(_$_CalculatedCartModel _value,
      $Res Function(_$_CalculatedCartModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? oldPrice = freezed,
    Object? count = null,
    Object? products = null,
    Object? applied = freezed,
  }) {
    return _then(_$_CalculatedCartModel(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<CartProduct>,
      applied: freezed == applied
          ? _value.applied
          : applied // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CalculatedCartModel implements _CalculatedCartModel {
  const _$_CalculatedCartModel(
      {required this.price,
      this.oldPrice,
      required this.count,
      required final List<CartProduct> products,
      this.applied})
      : _products = products;

  factory _$_CalculatedCartModel.fromJson(Map<String, dynamic> json) =>
      _$$_CalculatedCartModelFromJson(json);

  @override
  final String price;
  @override
  final String? oldPrice;
  @override
  final int count;
  final List<CartProduct> _products;
  @override
  List<CartProduct> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final bool? applied;

  @override
  String toString() {
    return 'CalculatedCartModel(price: $price, oldPrice: $oldPrice, count: $count, products: $products, applied: $applied)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CalculatedCartModel &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.oldPrice, oldPrice) ||
                other.oldPrice == oldPrice) &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.applied, applied) || other.applied == applied));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, price, oldPrice, count,
      const DeepCollectionEquality().hash(_products), applied);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CalculatedCartModelCopyWith<_$_CalculatedCartModel> get copyWith =>
      __$$_CalculatedCartModelCopyWithImpl<_$_CalculatedCartModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CalculatedCartModelToJson(
      this,
    );
  }
}

abstract class _CalculatedCartModel implements CalculatedCartModel {
  const factory _CalculatedCartModel(
      {required final String price,
      final String? oldPrice,
      required final int count,
      required final List<CartProduct> products,
      final bool? applied}) = _$_CalculatedCartModel;

  factory _CalculatedCartModel.fromJson(Map<String, dynamic> json) =
      _$_CalculatedCartModel.fromJson;

  @override
  String get price;
  @override
  String? get oldPrice;
  @override
  int get count;
  @override
  List<CartProduct> get products;
  @override
  bool? get applied;
  @override
  @JsonKey(ignore: true)
  _$$_CalculatedCartModelCopyWith<_$_CalculatedCartModel> get copyWith =>
      throw _privateConstructorUsedError;
}
