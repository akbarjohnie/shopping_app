import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'order_api.g.dart';

@RestApi()
abstract class OrderApi {
  factory OrderApi(
    Dio dio, {
    String baseUrl,
  }) = _OrderApi;

  @POST('/order/order/')
  Future createOrder(@Body() orderRequest);
}
