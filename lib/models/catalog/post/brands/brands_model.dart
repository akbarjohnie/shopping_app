import 'package:freezed_annotation/freezed_annotation.dart';

part 'brands_model.freezed.dart';

part 'brands_model.g.dart';

@freezed
abstract class BrandsModel with _$BrandsModel {
  const factory BrandsModel({
    String? cityFias,
    String? brand,
    List<int>? categoryIds,
    List<int>? productIds,
    String? search,
    String? sortBy,
  }) = _BrandsModel;

  factory BrandsModel.fromJson(Map<String, dynamic> json) =>
      _$BrandsModelFromJson(json);
}
