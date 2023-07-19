// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brands_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BrandsModel _$BrandsModelFromJson(Map<String, dynamic> json) {
  return _BrandsModel.fromJson(json);
}

/// @nodoc
mixin _$BrandsModel {
  String? get cityFias => throw _privateConstructorUsedError;
  String? get brand => throw _privateConstructorUsedError;
  List<int>? get categoryIds => throw _privateConstructorUsedError;
  List<int>? get productIds => throw _privateConstructorUsedError;
  String? get search => throw _privateConstructorUsedError;
  String? get sortBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandsModelCopyWith<BrandsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandsModelCopyWith<$Res> {
  factory $BrandsModelCopyWith(
          BrandsModel value, $Res Function(BrandsModel) then) =
      _$BrandsModelCopyWithImpl<$Res, BrandsModel>;
  @useResult
  $Res call(
      {String? cityFias,
      String? brand,
      List<int>? categoryIds,
      List<int>? productIds,
      String? search,
      String? sortBy});
}

/// @nodoc
class _$BrandsModelCopyWithImpl<$Res, $Val extends BrandsModel>
    implements $BrandsModelCopyWith<$Res> {
  _$BrandsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityFias = freezed,
    Object? brand = freezed,
    Object? categoryIds = freezed,
    Object? productIds = freezed,
    Object? search = freezed,
    Object? sortBy = freezed,
  }) {
    return _then(_value.copyWith(
      cityFias: freezed == cityFias
          ? _value.cityFias
          : cityFias // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryIds: freezed == categoryIds
          ? _value.categoryIds
          : categoryIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      productIds: freezed == productIds
          ? _value.productIds
          : productIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BrandsModelCopyWith<$Res>
    implements $BrandsModelCopyWith<$Res> {
  factory _$$_BrandsModelCopyWith(
          _$_BrandsModel value, $Res Function(_$_BrandsModel) then) =
      __$$_BrandsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? cityFias,
      String? brand,
      List<int>? categoryIds,
      List<int>? productIds,
      String? search,
      String? sortBy});
}

/// @nodoc
class __$$_BrandsModelCopyWithImpl<$Res>
    extends _$BrandsModelCopyWithImpl<$Res, _$_BrandsModel>
    implements _$$_BrandsModelCopyWith<$Res> {
  __$$_BrandsModelCopyWithImpl(
      _$_BrandsModel _value, $Res Function(_$_BrandsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityFias = freezed,
    Object? brand = freezed,
    Object? categoryIds = freezed,
    Object? productIds = freezed,
    Object? search = freezed,
    Object? sortBy = freezed,
  }) {
    return _then(_$_BrandsModel(
      cityFias: freezed == cityFias
          ? _value.cityFias
          : cityFias // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryIds: freezed == categoryIds
          ? _value._categoryIds
          : categoryIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      productIds: freezed == productIds
          ? _value._productIds
          : productIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BrandsModel implements _BrandsModel {
  const _$_BrandsModel(
      {this.cityFias,
      this.brand,
      final List<int>? categoryIds,
      final List<int>? productIds,
      this.search,
      this.sortBy})
      : _categoryIds = categoryIds,
        _productIds = productIds;

  factory _$_BrandsModel.fromJson(Map<String, dynamic> json) =>
      _$$_BrandsModelFromJson(json);

  @override
  final String? cityFias;
  @override
  final String? brand;
  final List<int>? _categoryIds;
  @override
  List<int>? get categoryIds {
    final value = _categoryIds;
    if (value == null) return null;
    if (_categoryIds is EqualUnmodifiableListView) return _categoryIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _productIds;
  @override
  List<int>? get productIds {
    final value = _productIds;
    if (value == null) return null;
    if (_productIds is EqualUnmodifiableListView) return _productIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? search;
  @override
  final String? sortBy;

  @override
  String toString() {
    return 'BrandsModel(cityFias: $cityFias, brand: $brand, categoryIds: $categoryIds, productIds: $productIds, search: $search, sortBy: $sortBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BrandsModel &&
            (identical(other.cityFias, cityFias) ||
                other.cityFias == cityFias) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            const DeepCollectionEquality()
                .equals(other._categoryIds, _categoryIds) &&
            const DeepCollectionEquality()
                .equals(other._productIds, _productIds) &&
            (identical(other.search, search) || other.search == search) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      cityFias,
      brand,
      const DeepCollectionEquality().hash(_categoryIds),
      const DeepCollectionEquality().hash(_productIds),
      search,
      sortBy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BrandsModelCopyWith<_$_BrandsModel> get copyWith =>
      __$$_BrandsModelCopyWithImpl<_$_BrandsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BrandsModelToJson(
      this,
    );
  }
}

abstract class _BrandsModel implements BrandsModel {
  const factory _BrandsModel(
      {final String? cityFias,
      final String? brand,
      final List<int>? categoryIds,
      final List<int>? productIds,
      final String? search,
      final String? sortBy}) = _$_BrandsModel;

  factory _BrandsModel.fromJson(Map<String, dynamic> json) =
      _$_BrandsModel.fromJson;

  @override
  String? get cityFias;
  @override
  String? get brand;
  @override
  List<int>? get categoryIds;
  @override
  List<int>? get productIds;
  @override
  String? get search;
  @override
  String? get sortBy;
  @override
  @JsonKey(ignore: true)
  _$$_BrandsModelCopyWith<_$_BrandsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
