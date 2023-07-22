// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
mixin _$ProductModel {
  int? get id => throw _privateConstructorUsedError;
  ProductProperty? get parameters => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;
  CategoriesModel? get categories => throw _privateConstructorUsedError;
  Badges get badges => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String? get oldPrice => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;
  String? get article => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool? get avaliable => throw _privateConstructorUsedError;
  num? get discount => throw _privateConstructorUsedError;
  int? get sort => throw _privateConstructorUsedError;
  num? get rating => throw _privateConstructorUsedError;
  int? get reviewCount => throw _privateConstructorUsedError;
  int? get needBuyToWholesale => throw _privateConstructorUsedError;
  int? get wholesaleDiscount => throw _privateConstructorUsedError;

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
      ProductProperty? parameters,
      String? picture,
      CategoriesModel? categories,
      Badges badges,
      String price,
      String? oldPrice,
      String brand,
      String? article,
      String? name,
      String? description,
      bool? avaliable,
      num? discount,
      int? sort,
      num? rating,
      int? reviewCount,
      int? needBuyToWholesale,
      int? wholesaleDiscount});

  $ProductPropertyCopyWith<$Res>? get parameters;
  $CategoriesModelCopyWith<$Res>? get categories;
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
    Object? parameters = freezed,
    Object? picture = freezed,
    Object? categories = freezed,
    Object? badges = null,
    Object? price = null,
    Object? oldPrice = freezed,
    Object? brand = null,
    Object? article = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? avaliable = freezed,
    Object? discount = freezed,
    Object? sort = freezed,
    Object? rating = freezed,
    Object? reviewCount = freezed,
    Object? needBuyToWholesale = freezed,
    Object? wholesaleDiscount = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      parameters: freezed == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as ProductProperty?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as CategoriesModel?,
      badges: null == badges
          ? _value.badges
          : badges // ignore: cast_nullable_to_non_nullable
              as Badges,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      article: freezed == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      avaliable: freezed == avaliable
          ? _value.avaliable
          : avaliable // ignore: cast_nullable_to_non_nullable
              as bool?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as num?,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as num?,
      reviewCount: freezed == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int?,
      needBuyToWholesale: freezed == needBuyToWholesale
          ? _value.needBuyToWholesale
          : needBuyToWholesale // ignore: cast_nullable_to_non_nullable
              as int?,
      wholesaleDiscount: freezed == wholesaleDiscount
          ? _value.wholesaleDiscount
          : wholesaleDiscount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductPropertyCopyWith<$Res>? get parameters {
    if (_value.parameters == null) {
      return null;
    }

    return $ProductPropertyCopyWith<$Res>(_value.parameters!, (value) {
      return _then(_value.copyWith(parameters: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoriesModelCopyWith<$Res>? get categories {
    if (_value.categories == null) {
      return null;
    }

    return $CategoriesModelCopyWith<$Res>(_value.categories!, (value) {
      return _then(_value.copyWith(categories: value) as $Val);
    });
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
      ProductProperty? parameters,
      String? picture,
      CategoriesModel? categories,
      Badges badges,
      String price,
      String? oldPrice,
      String brand,
      String? article,
      String? name,
      String? description,
      bool? avaliable,
      num? discount,
      int? sort,
      num? rating,
      int? reviewCount,
      int? needBuyToWholesale,
      int? wholesaleDiscount});

  @override
  $ProductPropertyCopyWith<$Res>? get parameters;
  @override
  $CategoriesModelCopyWith<$Res>? get categories;
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
    Object? parameters = freezed,
    Object? picture = freezed,
    Object? categories = freezed,
    Object? badges = null,
    Object? price = null,
    Object? oldPrice = freezed,
    Object? brand = null,
    Object? article = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? avaliable = freezed,
    Object? discount = freezed,
    Object? sort = freezed,
    Object? rating = freezed,
    Object? reviewCount = freezed,
    Object? needBuyToWholesale = freezed,
    Object? wholesaleDiscount = freezed,
  }) {
    return _then(_$_ProductModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      parameters: freezed == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as ProductProperty?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as CategoriesModel?,
      badges: null == badges
          ? _value.badges
          : badges // ignore: cast_nullable_to_non_nullable
              as Badges,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      article: freezed == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      avaliable: freezed == avaliable
          ? _value.avaliable
          : avaliable // ignore: cast_nullable_to_non_nullable
              as bool?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as num?,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as num?,
      reviewCount: freezed == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int?,
      needBuyToWholesale: freezed == needBuyToWholesale
          ? _value.needBuyToWholesale
          : needBuyToWholesale // ignore: cast_nullable_to_non_nullable
              as int?,
      wholesaleDiscount: freezed == wholesaleDiscount
          ? _value.wholesaleDiscount
          : wholesaleDiscount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductModel implements _ProductModel {
  const _$_ProductModel(
      {this.id,
      this.parameters,
      this.picture,
      this.categories,
      required this.badges,
      required this.price,
      this.oldPrice,
      required this.brand,
      this.article,
      this.name,
      this.description,
      this.avaliable,
      this.discount,
      this.sort,
      this.rating,
      this.reviewCount,
      this.needBuyToWholesale,
      this.wholesaleDiscount});

  factory _$_ProductModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductModelFromJson(json);

  @override
  final int? id;
  @override
  final ProductProperty? parameters;
  @override
  final String? picture;
  @override
  final CategoriesModel? categories;
  @override
  final Badges badges;
  @override
  final String price;
  @override
  final String? oldPrice;
  @override
  final String brand;
  @override
  final String? article;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final bool? avaliable;
  @override
  final num? discount;
  @override
  final int? sort;
  @override
  final num? rating;
  @override
  final int? reviewCount;
  @override
  final int? needBuyToWholesale;
  @override
  final int? wholesaleDiscount;

  @override
  String toString() {
    return 'ProductModel(id: $id, parameters: $parameters, picture: $picture, categories: $categories, badges: $badges, price: $price, oldPrice: $oldPrice, brand: $brand, article: $article, name: $name, description: $description, avaliable: $avaliable, discount: $discount, sort: $sort, rating: $rating, reviewCount: $reviewCount, needBuyToWholesale: $needBuyToWholesale, wholesaleDiscount: $wholesaleDiscount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parameters, parameters) ||
                other.parameters == parameters) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.categories, categories) ||
                other.categories == categories) &&
            (identical(other.badges, badges) || other.badges == badges) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.oldPrice, oldPrice) ||
                other.oldPrice == oldPrice) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.article, article) || other.article == article) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.avaliable, avaliable) ||
                other.avaliable == avaliable) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount) &&
            (identical(other.needBuyToWholesale, needBuyToWholesale) ||
                other.needBuyToWholesale == needBuyToWholesale) &&
            (identical(other.wholesaleDiscount, wholesaleDiscount) ||
                other.wholesaleDiscount == wholesaleDiscount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      parameters,
      picture,
      categories,
      badges,
      price,
      oldPrice,
      brand,
      article,
      name,
      description,
      avaliable,
      discount,
      sort,
      rating,
      reviewCount,
      needBuyToWholesale,
      wholesaleDiscount);

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
      final ProductProperty? parameters,
      final String? picture,
      final CategoriesModel? categories,
      required final Badges badges,
      required final String price,
      final String? oldPrice,
      required final String brand,
      final String? article,
      final String? name,
      final String? description,
      final bool? avaliable,
      final num? discount,
      final int? sort,
      final num? rating,
      final int? reviewCount,
      final int? needBuyToWholesale,
      final int? wholesaleDiscount}) = _$_ProductModel;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$_ProductModel.fromJson;

  @override
  int? get id;
  @override
  ProductProperty? get parameters;
  @override
  String? get picture;
  @override
  CategoriesModel? get categories;
  @override
  Badges get badges;
  @override
  String get price;
  @override
  String? get oldPrice;
  @override
  String get brand;
  @override
  String? get article;
  @override
  String? get name;
  @override
  String? get description;
  @override
  bool? get avaliable;
  @override
  num? get discount;
  @override
  int? get sort;
  @override
  num? get rating;
  @override
  int? get reviewCount;
  @override
  int? get needBuyToWholesale;
  @override
  int? get wholesaleDiscount;
  @override
  @JsonKey(ignore: true)
  _$$_ProductModelCopyWith<_$_ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductProperty _$ProductPropertyFromJson(Map<String, dynamic> json) {
  return _ProductProperty.fromJson(json);
}

/// @nodoc
mixin _$ProductProperty {
  int? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  int get product => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductPropertyCopyWith<ProductProperty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductPropertyCopyWith<$Res> {
  factory $ProductPropertyCopyWith(
          ProductProperty value, $Res Function(ProductProperty) then) =
      _$ProductPropertyCopyWithImpl<$Res, ProductProperty>;
  @useResult
  $Res call({int? id, String name, String value, int product});
}

/// @nodoc
class _$ProductPropertyCopyWithImpl<$Res, $Val extends ProductProperty>
    implements $ProductPropertyCopyWith<$Res> {
  _$ProductPropertyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? value = null,
    Object? product = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductPropertyCopyWith<$Res>
    implements $ProductPropertyCopyWith<$Res> {
  factory _$$_ProductPropertyCopyWith(
          _$_ProductProperty value, $Res Function(_$_ProductProperty) then) =
      __$$_ProductPropertyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String name, String value, int product});
}

/// @nodoc
class __$$_ProductPropertyCopyWithImpl<$Res>
    extends _$ProductPropertyCopyWithImpl<$Res, _$_ProductProperty>
    implements _$$_ProductPropertyCopyWith<$Res> {
  __$$_ProductPropertyCopyWithImpl(
      _$_ProductProperty _value, $Res Function(_$_ProductProperty) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? value = null,
    Object? product = null,
  }) {
    return _then(_$_ProductProperty(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductProperty implements _ProductProperty {
  const _$_ProductProperty(
      {this.id,
      required this.name,
      required this.value,
      required this.product});

  factory _$_ProductProperty.fromJson(Map<String, dynamic> json) =>
      _$$_ProductPropertyFromJson(json);

  @override
  final int? id;
  @override
  final String name;
  @override
  final String value;
  @override
  final int product;

  @override
  String toString() {
    return 'ProductProperty(id: $id, name: $name, value: $value, product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductProperty &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, value, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductPropertyCopyWith<_$_ProductProperty> get copyWith =>
      __$$_ProductPropertyCopyWithImpl<_$_ProductProperty>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductPropertyToJson(
      this,
    );
  }
}

abstract class _ProductProperty implements ProductProperty {
  const factory _ProductProperty(
      {final int? id,
      required final String name,
      required final String value,
      required final int product}) = _$_ProductProperty;

  factory _ProductProperty.fromJson(Map<String, dynamic> json) =
      _$_ProductProperty.fromJson;

  @override
  int? get id;
  @override
  String get name;
  @override
  String get value;
  @override
  int get product;
  @override
  @JsonKey(ignore: true)
  _$$_ProductPropertyCopyWith<_$_ProductProperty> get copyWith =>
      throw _privateConstructorUsedError;
}

Badges _$BadgesFromJson(Map<String, dynamic> json) {
  return _Badges.fromJson(json);
}

/// @nodoc
mixin _$Badges {
  int get id => throw _privateConstructorUsedError;
  String? get textColor => throw _privateConstructorUsedError;
  String? get bgColor => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BadgesCopyWith<Badges> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BadgesCopyWith<$Res> {
  factory $BadgesCopyWith(Badges value, $Res Function(Badges) then) =
      _$BadgesCopyWithImpl<$Res, Badges>;
  @useResult
  $Res call(
      {int id,
      String? textColor,
      String? bgColor,
      String? text,
      String? picture});
}

/// @nodoc
class _$BadgesCopyWithImpl<$Res, $Val extends Badges>
    implements $BadgesCopyWith<$Res> {
  _$BadgesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? textColor = freezed,
    Object? bgColor = freezed,
    Object? text = freezed,
    Object? picture = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      textColor: freezed == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String?,
      bgColor: freezed == bgColor
          ? _value.bgColor
          : bgColor // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BadgesCopyWith<$Res> implements $BadgesCopyWith<$Res> {
  factory _$$_BadgesCopyWith(_$_Badges value, $Res Function(_$_Badges) then) =
      __$$_BadgesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? textColor,
      String? bgColor,
      String? text,
      String? picture});
}

/// @nodoc
class __$$_BadgesCopyWithImpl<$Res>
    extends _$BadgesCopyWithImpl<$Res, _$_Badges>
    implements _$$_BadgesCopyWith<$Res> {
  __$$_BadgesCopyWithImpl(_$_Badges _value, $Res Function(_$_Badges) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? textColor = freezed,
    Object? bgColor = freezed,
    Object? text = freezed,
    Object? picture = freezed,
  }) {
    return _then(_$_Badges(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      textColor: freezed == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String?,
      bgColor: freezed == bgColor
          ? _value.bgColor
          : bgColor // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Badges implements _Badges {
  const _$_Badges(
      {required this.id,
      this.textColor,
      this.bgColor,
      this.text,
      this.picture});

  factory _$_Badges.fromJson(Map<String, dynamic> json) =>
      _$$_BadgesFromJson(json);

  @override
  final int id;
  @override
  final String? textColor;
  @override
  final String? bgColor;
  @override
  final String? text;
  @override
  final String? picture;

  @override
  String toString() {
    return 'Badges(id: $id, textColor: $textColor, bgColor: $bgColor, text: $text, picture: $picture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Badges &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.textColor, textColor) ||
                other.textColor == textColor) &&
            (identical(other.bgColor, bgColor) || other.bgColor == bgColor) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.picture, picture) || other.picture == picture));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, textColor, bgColor, text, picture);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BadgesCopyWith<_$_Badges> get copyWith =>
      __$$_BadgesCopyWithImpl<_$_Badges>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BadgesToJson(
      this,
    );
  }
}

abstract class _Badges implements Badges {
  const factory _Badges(
      {required final int id,
      final String? textColor,
      final String? bgColor,
      final String? text,
      final String? picture}) = _$_Badges;

  factory _Badges.fromJson(Map<String, dynamic> json) = _$_Badges.fromJson;

  @override
  int get id;
  @override
  String? get textColor;
  @override
  String? get bgColor;
  @override
  String? get text;
  @override
  String? get picture;
  @override
  @JsonKey(ignore: true)
  _$$_BadgesCopyWith<_$_Badges> get copyWith =>
      throw _privateConstructorUsedError;
}
