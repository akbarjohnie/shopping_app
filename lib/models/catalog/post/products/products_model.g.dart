// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductsM _$$_ProductsMFromJson(Map<String, dynamic> json) => _$_ProductsM(
      count: json['count'] as int?,
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>)
          .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProductsMToJson(_$_ProductsM instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };

_$_ProductModel _$$_ProductModelFromJson(Map<String, dynamic> json) =>
    _$_ProductModel(
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

Map<String, dynamic> _$$_ProductModelToJson(_$_ProductModel instance) =>
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
