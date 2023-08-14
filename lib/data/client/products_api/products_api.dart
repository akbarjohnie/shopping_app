import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/http.dart';

part 'products_api.g.dart';

@RestApi()
abstract class ProductsApi {
  factory ProductsApi(
    Dio dio, {
    String baseUrl,
  }) = _ProductsApi;

  @POST('/catalog/products/')
  Future getProducts(
    @Body() request,
  );
}

@JsonSerializable()
class ProductsSerializerRequest {
  ProductsSerializerRequest({
    this.cityFias,
    this.brand,
    this.categoryIds,
    this.productIds,
    this.search,
    this.sortBy,
  });

  String? cityFias;
  String? brand;
  List<int>? categoryIds;
  List<int>? productIds;
  String? search;
  String? sortBy;

  factory ProductsSerializerRequest.fromJson(Map<String, dynamic> json) =>
      _$ProductsSerializerRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ProductsSerializerRequestToJson(this);
}
