import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'user_info_api.g.dart';

@RestApi()
abstract class UserInfoApi {
  factory UserInfoApi(
    Dio dio, {
    String baseUrl,
  }) = _UserInfoApi;

  @GET('/auth/user')
  Future getUserInfo();
}
