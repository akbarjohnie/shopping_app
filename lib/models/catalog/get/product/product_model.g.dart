// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModel _$$_ProductModelFromJson(Map<String, dynamic> json) =>
    _$_ProductModel(
      id: json['id'] as int?,
      parameters: json['parameters'] == null
          ? null
          : ProductProperty.fromJson(
              json['parameters'] as Map<String, dynamic>),
      picture: json['picture'] as String?,
      categories: json['categories'] == null
          ? null
          : CategoriesModel.fromJson(
              json['categories'] as Map<String, dynamic>),
      badges: Badges.fromJson(json['badges'] as Map<String, dynamic>),
      price: json['price'] as String,
      oldPrice: json['oldPrice'] as String?,
      brand: json['brand'] as String,
      article: json['article'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      avaliable: json['avaliable'] as bool?,
      discount: json['discount'] as num?,
      sort: json['sort'] as int?,
      rating: json['rating'] as num?,
      reviewCount: json['reviewCount'] as int?,
      needBuyToWholesale: json['needBuyToWholesale'] as int?,
      wholesaleDiscount: json['wholesaleDiscount'] as int?,
    );

Map<String, dynamic> _$$_ProductModelToJson(_$_ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parameters': instance.parameters,
      'picture': instance.picture,
      'categories': instance.categories,
      'badges': instance.badges,
      'price': instance.price,
      'oldPrice': instance.oldPrice,
      'brand': instance.brand,
      'article': instance.article,
      'name': instance.name,
      'description': instance.description,
      'avaliable': instance.avaliable,
      'discount': instance.discount,
      'sort': instance.sort,
      'rating': instance.rating,
      'reviewCount': instance.reviewCount,
      'needBuyToWholesale': instance.needBuyToWholesale,
      'wholesaleDiscount': instance.wholesaleDiscount,
    };

_$_ProductProperty _$$_ProductPropertyFromJson(Map<String, dynamic> json) =>
    _$_ProductProperty(
      id: json['id'] as int?,
      name: json['name'] as String,
      value: json['value'] as String,
      product: json['product'] as int,
    );

Map<String, dynamic> _$$_ProductPropertyToJson(_$_ProductProperty instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'value': instance.value,
      'product': instance.product,
    };

_$_Badges _$$_BadgesFromJson(Map<String, dynamic> json) => _$_Badges(
      id: json['id'] as int,
      textColor: json['textColor'] as String?,
      bgColor: json['bgColor'] as String?,
      text: json['text'] as String?,
      picture: json['picture'] as String?,
    );

Map<String, dynamic> _$$_BadgesToJson(_$_Badges instance) => <String, dynamic>{
      'id': instance.id,
      'textColor': instance.textColor,
      'bgColor': instance.bgColor,
      'text': instance.text,
      'picture': instance.picture,
    };
