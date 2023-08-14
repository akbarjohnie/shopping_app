import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shopping_app/data/client/cart_api/cart_api.dart';
import 'package:shopping_app/data/client/categories_api/categories_api.dart';
import 'package:shopping_app/data/client/delivery_api/deliveries_api.dart';
import 'package:shopping_app/data/client/order_api/order_api.dart';
import 'package:shopping_app/data/client/payment_api/payment_api.dart';
import 'package:shopping_app/data/client/products_api/products_api.dart';
import 'package:shopping_app/data/client/user_info_api/user_info_api.dart';

class AppDependencies extends StatelessWidget {
  const AppDependencies({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (context) => Dio()
            ..interceptors.add(
              PrettyDioLogger(),
            )
            ..options.baseUrl = 'https://farm.fbtw.ru'
            ..options.contentType = 'application/json'
            ..options.headers = <String, dynamic>{
              "Authorization":
                  "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjkyNzEzNDM4LCJpYXQiOjE2OTAxMjE0MzgsImp0aSI6ImFlMGFhMTc1NDIwZDRmNzBhNzFhMTFmZDE0Y2I5YTNjIiwidXNlcl9pZCI6ODUsImlzX3ZlcmlmaWVkIjp0cnVlfQ.LF0DzZSAmn0KY1dxMxLBILw15mse8CrndPO3zTTBrmY",
            },
        ),
        Provider(
          create: (context) => CategoriesApi(
            context.read(),
          ),
        ),
        Provider(
          create: (context) => ProductsApi(
            context.read(),
          ),
        ),
        Provider(
          create: (context) => CartApi(
            context.read(),
          ),
        ),
        Provider(
          create: (context) => DeliveryApi(
            context.read(),
          ),
        ),
        Provider(
          create: (context) => UserInfoApi(
            context.read(),
          ),
        ),
        Provider(
          create: (context) => PaymentApi(
            context.read(),
          ),
        ),
        Provider(
          create: (context) => OrderApi(
            context.read(),
          ),
        ),
      ],
      child: child,
    );
  }
}
