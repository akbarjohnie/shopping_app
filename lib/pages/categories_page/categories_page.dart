import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/data/models/catalog/get/categories/categories_model.dart';
import 'package:shopping_app/data/repository/categories_repo/categories_api.dart';
import 'package:shopping_app/pages/categories_page/widgets/category_card_widget.dart';

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
    } catch (e) {
      debugPrint(e.toString());
    }
    return <CategoriesModel>[];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        title: const Text(
          'Подкатегория товаров',
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
          debugPrint(snapshot.toString());
          if (snapshot.data != null) {
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 220,
                mainAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return CategoryCardWidget(
                  id: snapshot.data![index].id,
                  categoryName: snapshot.data![index].name,
                  image: snapshot.data![index].picture,
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
