import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopping_app/models/cart/cart_product/cart_product.dart';

part 'calculated_cart.freezed.dart';
part 'calculated_cart.g.dart';

@freezed
abstract class CalculatedCartModel with _$CalculatedCartModel {
  const factory CalculatedCartModel({
    required String price,
    String? oldPrice,
    required int count,
    required List<CartProduct> products,
    bool? applied,
  }) = _CalculatedCartModel;

  factory CalculatedCartModel.fromJson(Map<String, dynamic> json) =>
      _$CalculatedCartModelFromJson(json);
}
