// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivers_post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeliveriesRequestModel _$$_DeliveriesRequestModelFromJson(
        Map<String, dynamic> json) =>
    _$_DeliveriesRequestModel(
      cityFias: json['cityFias'] as String,
      products: (json['products'] as List<dynamic>)
          .map((e) => Map<String, int>.from(e as Map))
          .toList(),
    );

Map<String, dynamic> _$$_DeliveriesRequestModelToJson(
        _$_DeliveriesRequestModel instance) =>
    <String, dynamic>{
      'cityFias': instance.cityFias,
      'products': instance.products,
    };
