// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartProduct _$$_CartProductFromJson(Map<String, dynamic> json) =>
    _$_CartProduct(
      count: json['count'] as int,
      product: CatalogProduct.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CartProductToJson(_$_CartProduct instance) =>
    <String, dynamic>{
      'count': instance.count,
      'product': instance.product,
    };

_$_CatalogProduct _$$_CatalogProductFromJson(Map<String, dynamic> json) =>
    _$_CatalogProduct(
      id: json['id'] as int,
      price: json['price'] as String,
      oldPrice: json['oldPrice'] as String?,
      discount: json['discount'] as String,
      name: json['name'] as String,
      brand: json['brand'] as String,
      picture: json['picture'] as String,
      article: json['article'] as String,
      badges: (json['badges'] as List<dynamic>)
          .map((e) => Badges.fromJson(e as Map<String, dynamic>))
          .toList(),
      rating: json['rating'] as num?,
      reviewsCount: json['reviewsCount'] as int?,
    );

Map<String, dynamic> _$$_CatalogProductToJson(_$_CatalogProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'oldPrice': instance.oldPrice,
      'discount': instance.discount,
      'name': instance.name,
      'brand': instance.brand,
      'picture': instance.picture,
      'article': instance.article,
      'badges': instance.badges,
      'rating': instance.rating,
      'reviewsCount': instance.reviewsCount,
    };
