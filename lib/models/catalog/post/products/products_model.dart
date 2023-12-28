import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopping_app/models/catalog/get/product/product_model.dart';

part 'products_model.freezed.dart';
part 'products_model.g.dart';

@freezed
abstract class ProductsM with _$ProductsM {
  const factory ProductsM({
    int? count,
    String? next,
    String? previous,
    required List<ProductModel> results,
  }) = _ProductsM;

  factory ProductsM.fromJson(Map<String, dynamic> json) =>
      _$ProductsMFromJson(json);
}

@freezed
abstract class ProductModel with _$ProductModel {
  const factory ProductModel({
    int? id,
    String? price,
    num? discount,
    String? oldPrice,
    String? name,
    String? article,
    String? picture,
    required Badges badges,
    num? rating,
    int? reviewsCount,
    required String brand,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
