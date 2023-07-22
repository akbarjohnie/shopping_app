import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/pages/product_page/products_page.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: const ProductsPage(),
      bottomNavigationBar: CupertinoTabBar(
        currentIndex: 1,
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
  }
}
