// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductsSerializerRequest _$ProductsSerializerRequestFromJson(
        Map<String, dynamic> json) =>
    ProductsSerializerRequest(
      cityFias: json['cityFias'] as String?,
      brand: json['brand'] as String?,
      categoryIds: (json['categoryIds'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      productIds:
          (json['productIds'] as List<dynamic>?)?.map((e) => e as int).toList(),
      search: json['search'] as String?,
      sortBy: json['sortBy'] as String?,
    );

Map<String, dynamic> _$ProductsSerializerRequestToJson(
        ProductsSerializerRequest instance) =>
    <String, dynamic>{
      'cityFias': instance.cityFias,
      'brand': instance.brand,
      'categoryIds': instance.categoryIds,
      'productIds': instance.productIds,
      'search': instance.search,
      'sortBy': instance.sortBy,
    };

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _ProductsApi implements ProductsApi {
  _ProductsApi(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  @override
  Future<dynamic> getProducts(dynamic request) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = request;
    final _result = await _dio.fetch(_setStreamType<dynamic>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/catalog/products/',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        ))));
    final value = _result.data;
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
