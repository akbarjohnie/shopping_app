import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shopping_app/data/repository/categories_repo/categories_api.dart';
import 'package:shopping_app/data/repository/products_aka_catalog/products_api.dart';

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
            ..options.contentType = 'application/json',
        ),
        Provider(
          create: (context) => CategoriesApi(
            context.read(),
          ),
        ),
        Provider(
          create: (context) => ProductsApi(context.read()
              // ..options.contentType = 'application/json',
              ),
        ),
      ],
      child: child,
    );
  }
}
