// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brands_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BrandsModel _$$_BrandsModelFromJson(Map<String, dynamic> json) =>
    _$_BrandsModel(
      cityFias: json['cityFias'] as String?,
      brand: json['brand'] as String?,
      categoryIds: (json['categoryIds'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      productIds:
          (json['productIds'] as List<dynamic>?)?.map((e) => e as int).toList(),
      search: json['search'] as String?,
      sortBy: json['sortBy'] as String?,
    );

Map<String, dynamic> _$$_BrandsModelToJson(_$_BrandsModel instance) =>
    <String, dynamic>{
      'cityFias': instance.cityFias,
      'brand': instance.brand,
      'categoryIds': instance.categoryIds,
      'productIds': instance.productIds,
      'search': instance.search,
      'sortBy': instance.sortBy,
    };
