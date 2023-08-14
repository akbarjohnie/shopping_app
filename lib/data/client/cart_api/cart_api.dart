import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:shopping_app/models/cart/calculated_cart.dart';

part 'cart_api.g.dart';

@RestApi()
abstract class CartApi {
  factory CartApi(
    Dio dio, {
    String baseUrl,
  }) = _CartApi;

  @POST('/cart/calculate/')
  Future<CalculatedCartModel> calculateCart(
    @Body() requestCalculateCart,
  );

  @POST('/cart/cart/')
  Future<List<CalculatedCartModel>> addCart(
    @Body() cartAdd,
  );

  @PUT('/cart/cart/')
  Future putCart(
    @Body() cartUpdate,
  );

  @DELETE('/cart/cart/')
  Future deleteCart(
    @Body() cartDelete,
  );
}
