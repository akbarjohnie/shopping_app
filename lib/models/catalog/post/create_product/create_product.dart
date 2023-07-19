import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_product.freezed.dart';

part 'create_product.g.dart';

@freezed
abstract class CreateProductModel with _$CreateProductModel {
  const factory CreateProductModel({
    required String article,
    required String name,
    required String price,
    String? discount,
    String? pictureUrl,
    String? baseImg,
    String? description,
    required int categoryId,
    int? needBuyToWholesale,
    int? wholesaleDiscount,
  }) = _CreateProductModel;

  factory CreateProductModel.fromJson(Map<String, dynamic> json) =>
      _$CreateProductModelFromJson(json);
}
