import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/data/client/categories_api/categories_api.dart';
import 'package:shopping_app/models/catalog/get/categories/categories_model.dart';
import 'package:shopping_app/pages/categories_page/widgets/category_card_widget.dart';

@RoutePage()
class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  CategoriesApi get categoriesApi => context.read();

  Future<List<CategoriesModel>> loadCategories() async {
    try {
      final data = categoriesApi.getCategories();
      return data;
    } catch (e, stacktrace) {
      debugPrint(e.toString());
      debugPrint(stacktrace.toString());
      rethrow;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        title: const Text(
          'Категории товаров',
          style: TextStyle(
            fontSize: 16,
            height: 132 / 100,
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: loadCategories(),
        builder: (context, snapshot) {
          var data = snapshot.data;
          if (data != null) {
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 220,
                mainAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              itemCount: data.length,
              itemBuilder: (context, index) {
                return CategoryCardWidget(
                  id: data[index].id,
                  categoryName: data[index].name,
                  image: data[index].picture,
                );
              },
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
