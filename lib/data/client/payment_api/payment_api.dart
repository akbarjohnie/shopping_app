import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'payment_api.g.dart';

@RestApi()
abstract class PaymentApi {
  factory PaymentApi(
    Dio dio, {
    String baseUrl,
  }) = _PaymentApi;

  @POST('/payments/')
  Future payment(@Body() request);
}
