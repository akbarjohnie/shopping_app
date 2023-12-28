import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:shopping_app/models/catalog/post/products/products_model.dart';

part 'products_api.g.dart';

@RestApi()
abstract class ProductsApi {
  factory ProductsApi(
    Dio dio, {
    String baseUrl,
  }) = _ProductsApi;

  @POST('/catalog/products/')
  Future<ProductsM> getProducts();
}
