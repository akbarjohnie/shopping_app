// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductsModel _$$_ProductsModelFromJson(Map<String, dynamic> json) =>
    _$_ProductsModel(
      id: json['id'] as int?,
      price: json['price'] as String?,
      discount: json['discount'] as num?,
      oldPrice: json['oldPrice'] as String?,
      name: json['name'] as String?,
      article: json['article'] as String?,
      picture: json['picture'] as String?,
      badges: Badges.fromJson(json['badges'] as Map<String, dynamic>),
      rating: json['rating'] as num?,
      reviewsCount: json['reviewsCount'] as int?,
      brand: json['brand'] as String,
    );

Map<String, dynamic> _$$_ProductsModelToJson(_$_ProductsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'discount': instance.discount,
      'oldPrice': instance.oldPrice,
      'name': instance.name,
      'article': instance.article,
      'picture': instance.picture,
      'badges': instance.badges,
      'rating': instance.rating,
      'reviewsCount': instance.reviewsCount,
      'brand': instance.brand,
    };
