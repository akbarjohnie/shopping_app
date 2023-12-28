// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductsM _$ProductsMFromJson(Map<String, dynamic> json) {
  return _ProductsM.fromJson(json);
}

/// @nodoc
mixin _$ProductsM {
  int? get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  List<ProductModel> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductsMCopyWith<ProductsM> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsMCopyWith<$Res> {
  factory $ProductsMCopyWith(ProductsM value, $Res Function(ProductsM) then) =
      _$ProductsMCopyWithImpl<$Res, ProductsM>;
  @useResult
  $Res call(
      {int? count, String? next, String? previous, List<ProductModel> results});
}

/// @nodoc
class _$ProductsMCopyWithImpl<$Res, $Val extends ProductsM>
    implements $ProductsMCopyWith<$Res> {
  _$ProductsMCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductsMCopyWith<$Res> implements $ProductsMCopyWith<$Res> {
  factory _$$_ProductsMCopyWith(
          _$_ProductsM value, $Res Function(_$_ProductsM) then) =
      __$$_ProductsMCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? count, String? next, String? previous, List<ProductModel> results});
}

/// @nodoc
class __$$_ProductsMCopyWithImpl<$Res>
    extends _$ProductsMCopyWithImpl<$Res, _$_ProductsM>
    implements _$$_ProductsMCopyWith<$Res> {
  __$$_ProductsMCopyWithImpl(
      _$_ProductsM _value, $Res Function(_$_ProductsM) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_$_ProductsM(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductsM implements _ProductsM {
  const _$_ProductsM(
      {this.count,
      this.next,
      this.previous,
      required final List<ProductModel> results})
      : _results = results;

  factory _$_ProductsM.fromJson(Map<String, dynamic> json) =>
      _$$_ProductsMFromJson(json);

  @override
  final int? count;
  @override
  final String? next;
  @override
  final String? previous;
  final List<ProductModel> _results;
  @override
  List<ProductModel> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'ProductsM(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductsM &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, next, previous,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductsMCopyWith<_$_ProductsM> get copyWith =>
      __$$_ProductsMCopyWithImpl<_$_ProductsM>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductsMToJson(
      this,
    );
  }
}

abstract class _ProductsM implements ProductsM {
  const factory _ProductsM(
      {final int? count,
      final String? next,
      final String? previous,
      required final List<ProductModel> results}) = _$_ProductsM;

  factory _ProductsM.fromJson(Map<String, dynamic> json) =
      _$_ProductsM.fromJson;

  @override
  int? get count;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  List<ProductModel> get results;
  @override
  @JsonKey(ignore: true)
  _$$_ProductsMCopyWith<_$_ProductsM> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
mixin _$ProductModel {
  int? get id => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  num? get discount => throw _privateConstructorUsedError;
  String? get oldPrice => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get article => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;
  Badges get badges => throw _privateConstructorUsedError;
  num? get rating => throw _privateConstructorUsedError;
  int? get reviewsCount => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res, ProductModel>;
  @useResult
  $Res call(
      {int? id,
      String? price,
      num? discount,
      String? oldPrice,
      String? name,
      String? article,
      String? picture,
      Badges badges,
      num? rating,
      int? reviewsCount,
      String brand});

  $BadgesCopyWith<$Res> get badges;
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res, $Val extends ProductModel>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? price = freezed,
    Object? discount = freezed,
    Object? oldPrice = freezed,
    Object? name = freezed,
    Object? article = freezed,
    Object? picture = freezed,
    Object? badges = null,
    Object? rating = freezed,
    Object? reviewsCount = freezed,
    Object? brand = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as num?,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      article: freezed == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      badges: null == badges
          ? _value.badges
          : badges // ignore: cast_nullable_to_non_nullable
              as Badges,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as num?,
      reviewsCount: freezed == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BadgesCopyWith<$Res> get badges {
    return $BadgesCopyWith<$Res>(_value.badges, (value) {
      return _then(_value.copyWith(badges: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProductModelCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$$_ProductModelCopyWith(
          _$_ProductModel value, $Res Function(_$_ProductModel) then) =
      __$$_ProductModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? price,
      num? discount,
      String? oldPrice,
      String? name,
      String? article,
      String? picture,
      Badges badges,
      num? rating,
      int? reviewsCount,
      String brand});

  @override
  $BadgesCopyWith<$Res> get badges;
}

/// @nodoc
class __$$_ProductModelCopyWithImpl<$Res>
    extends _$ProductModelCopyWithImpl<$Res, _$_ProductModel>
    implements _$$_ProductModelCopyWith<$Res> {
  __$$_ProductModelCopyWithImpl(
      _$_ProductModel _value, $Res Function(_$_ProductModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? price = freezed,
    Object? discount = freezed,
    Object? oldPrice = freezed,
    Object? name = freezed,
    Object? article = freezed,
    Object? picture = freezed,
    Object? badges = null,
    Object? rating = freezed,
    Object? reviewsCount = freezed,
    Object? brand = null,
  }) {
    return _then(_$_ProductModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as num?,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      article: freezed == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      badges: null == badges
          ? _value.badges
          : badges // ignore: cast_nullable_to_non_nullable
              as Badges,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as num?,
      reviewsCount: freezed == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductModel implements _ProductModel {
  const _$_ProductModel(
      {this.id,
      this.price,
      this.discount,
      this.oldPrice,
      this.name,
      this.article,
      this.picture,
      required this.badges,
      this.rating,
      this.reviewsCount,
      required this.brand});

  factory _$_ProductModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductModelFromJson(json);

  @override
  final int? id;
  @override
  final String? price;
  @override
  final num? discount;
  @override
  final String? oldPrice;
  @override
  final String? name;
  @override
  final String? article;
  @override
  final String? picture;
  @override
  final Badges badges;
  @override
  final num? rating;
  @override
  final int? reviewsCount;
  @override
  final String brand;

  @override
  String toString() {
    return 'ProductModel(id: $id, price: $price, discount: $discount, oldPrice: $oldPrice, name: $name, article: $article, picture: $picture, badges: $badges, rating: $rating, reviewsCount: $reviewsCount, brand: $brand)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.oldPrice, oldPrice) ||
                other.oldPrice == oldPrice) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.article, article) || other.article == article) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.badges, badges) || other.badges == badges) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reviewsCount, reviewsCount) ||
                other.reviewsCount == reviewsCount) &&
            (identical(other.brand, brand) || other.brand == brand));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, price, discount, oldPrice,
      name, article, picture, badges, rating, reviewsCount, brand);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductModelCopyWith<_$_ProductModel> get copyWith =>
      __$$_ProductModelCopyWithImpl<_$_ProductModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductModelToJson(
      this,
    );
  }
}

abstract class _ProductModel implements ProductModel {
  const factory _ProductModel(
      {final int? id,
      final String? price,
      final num? discount,
      final String? oldPrice,
      final String? name,
      final String? article,
      final String? picture,
      required final Badges badges,
      final num? rating,
      final int? reviewsCount,
      required final String brand}) = _$_ProductModel;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$_ProductModel.fromJson;

  @override
  int? get id;
  @override
  String? get price;
  @override
  num? get discount;
  @override
  String? get oldPrice;
  @override
  String? get name;
  @override
  String? get article;
  @override
  String? get picture;
  @override
  Badges get badges;
  @override
  num? get rating;
  @override
  int? get reviewsCount;
  @override
  String get brand;
  @override
  @JsonKey(ignore: true)
  _$$_ProductModelCopyWith<_$_ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}
