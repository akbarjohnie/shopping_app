import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/data/models/catalog/get/product/product_model.dart';
import 'package:shopping_app/pages/cart_page/cart_page.dart';
import 'package:shopping_app/pages/categories_page/categories_page.dart';
import 'package:shopping_app/pages/creating_order_page/creating_order_page.dart';
import 'package:shopping_app/pages/favourite_page/favourite_page.dart';
import 'package:shopping_app/pages/home_page.dart';
import 'package:shopping_app/pages/product_page/products_page.dart';
import 'package:shopping_app/pages/profile_page/profile_page.dart';
import 'package:shopping_app/pages/selected_product_page/selected_product_page.dart';
import 'package:shopping_app/pages/showcase_page/showcase_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          initial: true,
          page: HomeRoute.page,
          children: [
            AutoRoute(
              path: 'showcase-tab',
              page: ShowcaseTab.page,
              children: [
                AutoRoute(
                  initial: true,
                  path: 'showcase',
                  page: ShowcaseRoute.page,
                ),
              ],
            ),
            AutoRoute(
              path: 'catalog-tab',
              page: CatalogTab.page,
              children: [
                AutoRoute(
                  path: 'categories',
                  page: CategoriesRoute.page,
                ),
                AutoRoute(
                  initial: true,
                  path: 'products',
                  page: ProductsRoute.page,
                ),
                AutoRoute(
                  path: 'selected-product',
                  page: SelectedProductRoute.page,
                ),
              ],
            ),
            AutoRoute(
              path: 'cart-tab',
              page: CartTab.page,
              children: [
                AutoRoute(
                  path: 'cart',
                  initial: true,
                  page: CartRoute.page,
                ),
                AutoRoute(
                  path: 'creating-order',
                  page: CreatingOrderRoute.page,
                ),
              ],
            ),
            AutoRoute(
              path: 'favourite-tab',
              page: FavouriteTab.page,
              children: [
                AutoRoute(
                  path: 'favourite',
                  initial: true,
                  page: FavouriteRoute.page,
                ),
              ],
            ),
            AutoRoute(
              path: 'profile-tab',
              page: ProfileTab.page,
              children: [
                AutoRoute(
                  path: 'profile',
                  initial: true,
                  page: ProfileRoute.page,
                ),
              ],
            ),
          ],
        ),
      ];
}

@RoutePage(name: 'ShowcaseTab')
class ShowcaseTabPage extends AutoRouter {
  const ShowcaseTabPage({super.key});
}

@RoutePage(name: 'CatalogTab')
class CatalogTabPage extends AutoRouter {
  const CatalogTabPage({super.key});
}

@RoutePage(name: 'CartTab')
class CartTabPage extends AutoRouter {
  const CartTabPage({super.key});
}

@RoutePage(name: 'FavouriteTab')
class FavouriteTabPage extends AutoRouter {
  const FavouriteTabPage({super.key});
}

@RoutePage(name: 'ProfileTab')
class ProfileTabPage extends AutoRouter {
  const ProfileTabPage({super.key});
}
