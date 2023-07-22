// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    ShowcaseTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ShowcaseTabPage(),
      );
    },
    CatalogTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CatalogTabPage(),
      );
    },
    CartTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CartTabPage(),
      );
    },
    FavouriteTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FavouriteTabPage(),
      );
    },
    ProfileTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileTabPage(),
      );
    },
    CartRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CartPage(),
      );
    },
    CategoriesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CategoriesPage(),
      );
    },
    FavouriteRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FavouritePage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    ProductsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProductsPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfilePage(),
      );
    },
    SelectedProductRoute.name: (routeData) {
      final args = routeData.argsAs<SelectedProductRouteArgs>(
          orElse: () => const SelectedProductRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SelectedProductPage(
          key: args.key,
          id: args.id,
          price: args.price,
          discount: args.discount,
          oldPrice: args.oldPrice,
          categoryName: args.categoryName,
          article: args.article,
          image: args.image,
          badges: args.badges,
          rating: args.rating,
          reviewsCount: args.reviewsCount,
          brand: args.brand,
        ),
      );
    },
    ShowcaseRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ShowcasePage(),
      );
    },
  };
}

/// generated route for
/// [ShowcaseTabPage]
class ShowcaseTab extends PageRouteInfo<void> {
  const ShowcaseTab({List<PageRouteInfo>? children})
      : super(
          ShowcaseTab.name,
          initialChildren: children,
        );

  static const String name = 'ShowcaseTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CatalogTabPage]
class CatalogTab extends PageRouteInfo<void> {
  const CatalogTab({List<PageRouteInfo>? children})
      : super(
          CatalogTab.name,
          initialChildren: children,
        );

  static const String name = 'CatalogTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CartTabPage]
class CartTab extends PageRouteInfo<void> {
  const CartTab({List<PageRouteInfo>? children})
      : super(
          CartTab.name,
          initialChildren: children,
        );

  static const String name = 'CartTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FavouriteTabPage]
class FavouriteTab extends PageRouteInfo<void> {
  const FavouriteTab({List<PageRouteInfo>? children})
      : super(
          FavouriteTab.name,
          initialChildren: children,
        );

  static const String name = 'FavouriteTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfileTabPage]
class ProfileTab extends PageRouteInfo<void> {
  const ProfileTab({List<PageRouteInfo>? children})
      : super(
          ProfileTab.name,
          initialChildren: children,
        );

  static const String name = 'ProfileTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CartPage]
class CartRoute extends PageRouteInfo<void> {
  const CartRoute({List<PageRouteInfo>? children})
      : super(
          CartRoute.name,
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CategoriesPage]
class CategoriesRoute extends PageRouteInfo<void> {
  const CategoriesRoute({List<PageRouteInfo>? children})
      : super(
          CategoriesRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoriesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FavouritePage]
class FavouriteRoute extends PageRouteInfo<void> {
  const FavouriteRoute({List<PageRouteInfo>? children})
      : super(
          FavouriteRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavouriteRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProductsPage]
class ProductsRoute extends PageRouteInfo<void> {
  const ProductsRoute({List<PageRouteInfo>? children})
      : super(
          ProductsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SelectedProductPage]
class SelectedProductRoute extends PageRouteInfo<SelectedProductRouteArgs> {
  SelectedProductRoute({
    Key? key,
    int? id,
    String? price,
    num? discount,
    String? oldPrice,
    String? categoryName,
    String? article,
    String? image,
    Badges? badges,
    num? rating,
    int? reviewsCount,
    String? brand,
    List<PageRouteInfo>? children,
  }) : super(
          SelectedProductRoute.name,
          args: SelectedProductRouteArgs(
            key: key,
            id: id,
            price: price,
            discount: discount,
            oldPrice: oldPrice,
            categoryName: categoryName,
            article: article,
            image: image,
            badges: badges,
            rating: rating,
            reviewsCount: reviewsCount,
            brand: brand,
          ),
          initialChildren: children,
        );

  static const String name = 'SelectedProductRoute';

  static const PageInfo<SelectedProductRouteArgs> page =
      PageInfo<SelectedProductRouteArgs>(name);
}

class SelectedProductRouteArgs {
  const SelectedProductRouteArgs({
    this.key,
    this.id,
    this.price,
    this.discount,
    this.oldPrice,
    this.categoryName,
    this.article,
    this.image,
    this.badges,
    this.rating,
    this.reviewsCount,
    this.brand,
  });

  final Key? key;

  final int? id;

  final String? price;

  final num? discount;

  final String? oldPrice;

  final String? categoryName;

  final String? article;

  final String? image;

  final Badges? badges;

  final num? rating;

  final int? reviewsCount;

  final String? brand;

  @override
  String toString() {
    return 'SelectedProductRouteArgs{key: $key, id: $id, price: $price, discount: $discount, oldPrice: $oldPrice, categoryName: $categoryName, article: $article, image: $image, badges: $badges, rating: $rating, reviewsCount: $reviewsCount, brand: $brand}';
  }
}

/// generated route for
/// [ShowcasePage]
class ShowcaseRoute extends PageRouteInfo<void> {
  const ShowcaseRoute({List<PageRouteInfo>? children})
      : super(
          ShowcaseRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShowcaseRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
