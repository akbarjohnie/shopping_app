import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopping_app/data/models/catalog/get/product/product_model.dart';

part 'products_model.freezed.dart';
part 'products_model.g.dart';

@freezed
abstract class ProductsModel with _$ProductsModel {
  const factory ProductsModel({
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
  }) = _ProductsModel;

  factory ProductsModel.fromJson(Map<String, dynamic> json) =>
      _$ProductsModelFromJson(json);
}
