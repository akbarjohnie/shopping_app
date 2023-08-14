// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartProduct _$CartProductFromJson(Map<String, dynamic> json) {
  return _CartProduct.fromJson(json);
}

/// @nodoc
mixin _$CartProduct {
  int get count => throw _privateConstructorUsedError;
  CatalogProduct get product => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartProductCopyWith<CartProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartProductCopyWith<$Res> {
  factory $CartProductCopyWith(
          CartProduct value, $Res Function(CartProduct) then) =
      _$CartProductCopyWithImpl<$Res, CartProduct>;
  @useResult
  $Res call({int count, CatalogProduct product});

  $CatalogProductCopyWith<$Res> get product;
}

/// @nodoc
class _$CartProductCopyWithImpl<$Res, $Val extends CartProduct>
    implements $CartProductCopyWith<$Res> {
  _$CartProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? product = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as CatalogProduct,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CatalogProductCopyWith<$Res> get product {
    return $CatalogProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CartProductCopyWith<$Res>
    implements $CartProductCopyWith<$Res> {
  factory _$$_CartProductCopyWith(
          _$_CartProduct value, $Res Function(_$_CartProduct) then) =
      __$$_CartProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, CatalogProduct product});

  @override
  $CatalogProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$_CartProductCopyWithImpl<$Res>
    extends _$CartProductCopyWithImpl<$Res, _$_CartProduct>
    implements _$$_CartProductCopyWith<$Res> {
  __$$_CartProductCopyWithImpl(
      _$_CartProduct _value, $Res Function(_$_CartProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? product = null,
  }) {
    return _then(_$_CartProduct(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as CatalogProduct,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartProduct implements _CartProduct {
  const _$_CartProduct({required this.count, required this.product});

  factory _$_CartProduct.fromJson(Map<String, dynamic> json) =>
      _$$_CartProductFromJson(json);

  @override
  final int count;
  @override
  final CatalogProduct product;

  @override
  String toString() {
    return 'CartProduct(count: $count, product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartProduct &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartProductCopyWith<_$_CartProduct> get copyWith =>
      __$$_CartProductCopyWithImpl<_$_CartProduct>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartProductToJson(
      this,
    );
  }
}

abstract class _CartProduct implements CartProduct {
  const factory _CartProduct(
      {required final int count,
      required final CatalogProduct product}) = _$_CartProduct;

  factory _CartProduct.fromJson(Map<String, dynamic> json) =
      _$_CartProduct.fromJson;

  @override
  int get count;
  @override
  CatalogProduct get product;
  @override
  @JsonKey(ignore: true)
  _$$_CartProductCopyWith<_$_CartProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

CatalogProduct _$CatalogProductFromJson(Map<String, dynamic> json) {
  return _CatalogProduct.fromJson(json);
}

/// @nodoc
mixin _$CatalogProduct {
  int get id => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String? get oldPrice => throw _privateConstructorUsedError;
  String get discount => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError;
  String get article => throw _privateConstructorUsedError;
  List<Badges> get badges => throw _privateConstructorUsedError;
  num? get rating => throw _privateConstructorUsedError;
  int? get reviewsCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatalogProductCopyWith<CatalogProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogProductCopyWith<$Res> {
  factory $CatalogProductCopyWith(
          CatalogProduct value, $Res Function(CatalogProduct) then) =
      _$CatalogProductCopyWithImpl<$Res, CatalogProduct>;
  @useResult
  $Res call(
      {int id,
      String price,
      String? oldPrice,
      String discount,
      String name,
      String brand,
      String picture,
      String article,
      List<Badges> badges,
      num? rating,
      int? reviewsCount});
}

/// @nodoc
class _$CatalogProductCopyWithImpl<$Res, $Val extends CatalogProduct>
    implements $CatalogProductCopyWith<$Res> {
  _$CatalogProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? price = null,
    Object? oldPrice = freezed,
    Object? discount = null,
    Object? name = null,
    Object? brand = null,
    Object? picture = null,
    Object? article = null,
    Object? badges = null,
    Object? rating = freezed,
    Object? reviewsCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      article: null == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as String,
      badges: null == badges
          ? _value.badges
          : badges // ignore: cast_nullable_to_non_nullable
              as List<Badges>,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as num?,
      reviewsCount: freezed == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CatalogProductCopyWith<$Res>
    implements $CatalogProductCopyWith<$Res> {
  factory _$$_CatalogProductCopyWith(
          _$_CatalogProduct value, $Res Function(_$_CatalogProduct) then) =
      __$$_CatalogProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String price,
      String? oldPrice,
      String discount,
      String name,
      String brand,
      String picture,
      String article,
      List<Badges> badges,
      num? rating,
      int? reviewsCount});
}

/// @nodoc
class __$$_CatalogProductCopyWithImpl<$Res>
    extends _$CatalogProductCopyWithImpl<$Res, _$_CatalogProduct>
    implements _$$_CatalogProductCopyWith<$Res> {
  __$$_CatalogProductCopyWithImpl(
      _$_CatalogProduct _value, $Res Function(_$_CatalogProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? price = null,
    Object? oldPrice = freezed,
    Object? discount = null,
    Object? name = null,
    Object? brand = null,
    Object? picture = null,
    Object? article = null,
    Object? badges = null,
    Object? rating = freezed,
    Object? reviewsCount = freezed,
  }) {
    return _then(_$_CatalogProduct(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      article: null == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as String,
      badges: null == badges
          ? _value._badges
          : badges // ignore: cast_nullable_to_non_nullable
              as List<Badges>,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as num?,
      reviewsCount: freezed == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CatalogProduct implements _CatalogProduct {
  const _$_CatalogProduct(
      {required this.id,
      required this.price,
      this.oldPrice,
      required this.discount,
      required this.name,
      required this.brand,
      required this.picture,
      required this.article,
      required final List<Badges> badges,
      this.rating,
      this.reviewsCount})
      : _badges = badges;

  factory _$_CatalogProduct.fromJson(Map<String, dynamic> json) =>
      _$$_CatalogProductFromJson(json);

  @override
  final int id;
  @override
  final String price;
  @override
  final String? oldPrice;
  @override
  final String discount;
  @override
  final String name;
  @override
  final String brand;
  @override
  final String picture;
  @override
  final String article;
  final List<Badges> _badges;
  @override
  List<Badges> get badges {
    if (_badges is EqualUnmodifiableListView) return _badges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_badges);
  }

  @override
  final num? rating;
  @override
  final int? reviewsCount;

  @override
  String toString() {
    return 'CatalogProduct(id: $id, price: $price, oldPrice: $oldPrice, discount: $discount, name: $name, brand: $brand, picture: $picture, article: $article, badges: $badges, rating: $rating, reviewsCount: $reviewsCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CatalogProduct &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.oldPrice, oldPrice) ||
                other.oldPrice == oldPrice) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.article, article) || other.article == article) &&
            const DeepCollectionEquality().equals(other._badges, _badges) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reviewsCount, reviewsCount) ||
                other.reviewsCount == reviewsCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      price,
      oldPrice,
      discount,
      name,
      brand,
      picture,
      article,
      const DeepCollectionEquality().hash(_badges),
      rating,
      reviewsCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CatalogProductCopyWith<_$_CatalogProduct> get copyWith =>
      __$$_CatalogProductCopyWithImpl<_$_CatalogProduct>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CatalogProductToJson(
      this,
    );
  }
}

abstract class _CatalogProduct implements CatalogProduct {
  const factory _CatalogProduct(
      {required final int id,
      required final String price,
      final String? oldPrice,
      required final String discount,
      required final String name,
      required final String brand,
      required final String picture,
      required final String article,
      required final List<Badges> badges,
      final num? rating,
      final int? reviewsCount}) = _$_CatalogProduct;

  factory _CatalogProduct.fromJson(Map<String, dynamic> json) =
      _$_CatalogProduct.fromJson;

  @override
  int get id;
  @override
  String get price;
  @override
  String? get oldPrice;
  @override
  String get discount;
  @override
  String get name;
  @override
  String get brand;
  @override
  String get picture;
  @override
  String get article;
  @override
  List<Badges> get badges;
  @override
  num? get rating;
  @override
  int? get reviewsCount;
  @override
  @JsonKey(ignore: true)
  _$$_CatalogProductCopyWith<_$_CatalogProduct> get copyWith =>
      throw _privateConstructorUsedError;
}
