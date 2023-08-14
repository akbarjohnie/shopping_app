import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopping_app/models/catalog/get/categories/categories_model.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
abstract class ProductModel with _$ProductModel {
  const factory ProductModel({
    int? id,
    ProductProperty? parameters,
    String? picture,
    CategoriesModel? categories,
    required Badges badges,
    required String price,
    String? oldPrice,
    required String brand,
    String? article,
    String? name,
    String? description,
    bool? avaliable,
    num? discount,
    int? sort,
    num? rating,
    int? reviewCount,
    int? needBuyToWholesale,
    int? wholesaleDiscount,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}

@freezed
abstract class ProductProperty with _$ProductProperty {
  const factory ProductProperty({
    int? id,
    required String name,
    required String value,
    required int product,
  }) = _ProductProperty;

  factory ProductProperty.fromJson(Map<String, dynamic> json) =>
      _$ProductPropertyFromJson(json);
}

@freezed
abstract class Badges with _$Badges {
  const factory Badges({
    required int id,
    String? textColor,
    String? bgColor,
    String? text,
    String? picture,
  }) = _Badges;

  factory Badges.fromJson(Map<String, dynamic> json) => _$BadgesFromJson(json);
}
