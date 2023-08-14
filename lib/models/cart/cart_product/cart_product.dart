import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopping_app/models/catalog/get/product/product_model.dart';

part 'cart_product.freezed.dart';
part 'cart_product.g.dart';

@freezed
abstract class CartProduct with _$CartProduct {
  const factory CartProduct({
    required int count,
    required CatalogProduct product,
  }) = _CartProduct;

  factory CartProduct.fromJson(Map<String, dynamic> json) =>
      _$CartProductFromJson(json);
}

@freezed
abstract class CatalogProduct with _$CatalogProduct {
  const factory CatalogProduct({
    required int id,
    required String price,
    String? oldPrice,
    required String discount,
    required String name,
    required String brand,
    required String picture,
    required String article,
    required List<Badges> badges,
    num? rating,
    int? reviewsCount,
  }) = _CatalogProduct;

  factory CatalogProduct.fromJson(Map<String, dynamic> json) =>
      _$CatalogProductFromJson(json);
}
