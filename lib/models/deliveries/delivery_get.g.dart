// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_get.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeliveryModel _$$_DeliveryModelFromJson(Map<String, dynamic> json) =>
    _$_DeliveryModel(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      type: json['type'] as String,
      icon: json['icon'] as String,
      locations: (json['locations'] as List<dynamic>?)
          ?.map((e) => DeliveryPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
      farmAdress: json['farmAdress'] as String?,
    );

Map<String, dynamic> _$$_DeliveryModelToJson(_$_DeliveryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'type': instance.type,
      'icon': instance.icon,
      'locations': instance.locations,
      'farmAdress': instance.farmAdress,
    };

_$_DeliveryPoint _$$_DeliveryPointFromJson(Map<String, dynamic> json) =>
    _$_DeliveryPoint(
      id: json['id'] as String,
      name: json['name'] as String?,
      adress: json['adress'] as String?,
      phone: json['phone'] as String?,
      lon: json['lon'] as num,
      lat: json['lat'] as num,
      workHours: json['workHours'] as String?,
      paymentAllowed: json['paymentAllowed'] as bool?,
    );

Map<String, dynamic> _$$_DeliveryPointToJson(_$_DeliveryPoint instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'adress': instance.adress,
      'phone': instance.phone,
      'lon': instance.lon,
      'lat': instance.lat,
      'workHours': instance.workHours,
      'paymentAllowed': instance.paymentAllowed,
    };
