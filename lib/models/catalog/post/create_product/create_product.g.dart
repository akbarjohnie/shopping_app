// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateProductModel _$$_CreateProductModelFromJson(
        Map<String, dynamic> json) =>
    _$_CreateProductModel(
      article: json['article'] as String,
      name: json['name'] as String,
      price: json['price'] as String,
      discount: json['discount'] as String?,
      pictureUrl: json['pictureUrl'] as String?,
      baseImg: json['baseImg'] as String?,
      description: json['description'] as String?,
      categoryId: json['categoryId'] as int,
      needBuyToWholesale: json['needBuyToWholesale'] as int?,
      wholesaleDiscount: json['wholesaleDiscount'] as int?,
    );

Map<String, dynamic> _$$_CreateProductModelToJson(
        _$_CreateProductModel instance) =>
    <String, dynamic>{
      'article': instance.article,
      'name': instance.name,
      'price': instance.price,
      'discount': instance.discount,
      'pictureUrl': instance.pictureUrl,
      'baseImg': instance.baseImg,
      'description': instance.description,
      'categoryId': instance.categoryId,
      'needBuyToWholesale': instance.needBuyToWholesale,
      'wholesaleDiscount': instance.wholesaleDiscount,
    };
