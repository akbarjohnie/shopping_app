import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'cart_api.g.dart';

@RestApi()
abstract class CartApi {
  factory CartApi(
    Dio dio, {
    String baseUrl,
  }) = _CartApi;

  @POST('/cart/calculate/')
  Future calculateCart(
    @Body() requestCalculate,
  );

  @POST('/cart/cart/')
  Future addCart(
    @Body() requestAdd,
  );

  @POST('/cart/cart/')
  Future putCart(
    @Body() requestPut,
  );

  @DELETE('/cart/cart/')
  Future deleteCart(
    @Body() requestDelete,
  );
}
