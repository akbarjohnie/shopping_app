import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/navigation/app_router.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      lazyLoad: false,
      routes: const [
        ShowcaseTab(),
        CatalogTab(),
        CartTab(),
        FavouriteTab(),
        ProfileTab(),
      ],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
          body: child,
          bottomNavigationBar: CupertinoTabBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) {
              tabsRouter.setActiveIndex(index);
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.backup_table,
                ),
                label: 'Витрина',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.search,
                ),
                label: 'Каталог',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.cart,
                ),
                label: 'Корзина',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_outline_outlined,
                ),
                label: 'Избранное',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline_outlined,
                ),
                label: 'Профиль',
              ),
            ],
          ),
        );
      },
    );
  }
}
