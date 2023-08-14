import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'deliveries_api.g.dart';

@RestApi()
abstract class DeliveryApi {
  factory DeliveryApi(
    Dio dio, {
    String baseUrl,
  }) = _DeliveryApi;

  @POST('/deliveries/deliveries/')
  Future getDeliveries(
    @Body() requestDelivery,
  );
}
