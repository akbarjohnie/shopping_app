import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:shopping_app/models/catalog/get/categories/categories_model.dart';

part 'categories_api.g.dart';

@RestApi()
abstract class CategoriesApi {
  factory CategoriesApi(
    Dio dio, {
    String baseUrl,
  }) = _CategoriesApi;

  @GET("/catalog/categories/")
  Future<List<CategoriesModel>> getCategories({
    @Query('id') int? id,
    @Query('name') String? name,
    @Query('picture') String? picture,
  });
}
