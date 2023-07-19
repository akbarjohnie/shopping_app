import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivers_post.freezed.dart';
part 'delivers_post.g.dart';

@freezed
abstract class DeliveriesRequestModel with _$DeliveriesRequestModel {
  const factory DeliveriesRequestModel({
    required String cityFias,
    required List<Map<String, int>> products,
  }) = _DeliveriesRequestModel;

  factory DeliveriesRequestModel.fromJson(Map<String, dynamic> json) =>
      _$DeliveriesRequestModelFromJson(json);
}
