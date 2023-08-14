// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculated_cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CalculatedCartModel _$$_CalculatedCartModelFromJson(
        Map<String, dynamic> json) =>
    _$_CalculatedCartModel(
      price: json['price'] as String,
      oldPrice: json['oldPrice'] as String?,
      count: json['count'] as int,
      products: (json['products'] as List<dynamic>)
          .map((e) => CartProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
      applied: json['applied'] as bool?,
    );

Map<String, dynamic> _$$_CalculatedCartModelToJson(
        _$_CalculatedCartModel instance) =>
    <String, dynamic>{
      'price': instance.price,
      'oldPrice': instance.oldPrice,
      'count': instance.count,
      'products': instance.products,
      'applied': instance.applied,
    };
