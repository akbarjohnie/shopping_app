import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/data/repository/products_aka_catalog/products_api.dart';
import 'package:shopping_app/pages/product_page/widget/product_widget.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  ProductsApi get productsApi => context.read();

  Future loadCategories() async {
    // List<Map<String, dynamic>> data = [];
    try {
      var request = await productsApi.getProducts({});

      // List body = request['results'];

      // for (var e in body) {
      //   data.add(
      //     <String, dynamic>{
      //       'badges': Badges(
      //         id: e['badges']['id'],
      //       ),
      //       'brand': e['brand'] as String,
      //       'article': e['article'] as String?,
      //       'discount': num.tryParse(e['discount']),
      //       'id': int.tryParse(e['id']),
      //       'name': e['name'] as String?,
      //       'oldPrice': e['old_price'] as String?,
      //       'picture': e['picture'] as String?,
      //       'price': e['price'] as String?,
      //       'rating': num.tryParse(e['rating']),
      //       'reviewsCount': int.tryParse(e['reviews_count']),
      //     },
      //   );
      // }

      return request['results'];
    } catch (e, stacktrace) {
      debugPrint('Someting went wrong: $e');
      debugPrint(stacktrace.toString());
    }
    return [];
  }

  @override
  Widget build(BuildContext context) {
    var themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 70,
          title: Column(
            children: [
              Text(
                'Товары',
                style: themeData.textTheme.headlineMedium,
              ),
              Container(
                color: const Color(0xFFF9F9F9),
                // decoration: const BoxDecoration(
                // boxShadow: [
                //   BoxShadow(
                //     color: Color.fromRGBO(0, 0, 0, 0.10),
                //     spreadRadius: 5,
                //     blurRadius: 7,
                //     offset: Offset(0, 3),
                //   ),
                // ],
                // ),
                child: TextField(
                  maxLines: 1,
                  decoration: InputDecoration(
                    disabledBorder: InputBorder.none,
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(vertical: 5),
                    prefix: const Icon(
                      Icons.search,
                    ),
                    hintText: 'Поиск',
                    hintStyle: themeData.textTheme.headlineSmall,
                    enabledBorder: InputBorder.none,
                  ),
                ),
              )
            ],
          ),
          centerTitle: true),
      body: FutureBuilder(
        future: loadCategories(),
        builder: (context, snapshot) {
          if (snapshot.data != null) {
            debugPrint("snapshot ${snapshot.data}");
            var data = snapshot.data;
            return GridView.builder(
              itemCount: data.length,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 220,
                mainAxisExtent: 250,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              itemBuilder: (context, index) {
                return ProductCardWidget(
                  id: data[index]["id"],
                  categoryName: data[index]["name"],
                  image: data[index]["picture"],
                  brand: data[index]["brand"],
                  price: data[index]["price"].toString().substring(
                        0,
                        data[index]["price"].toString().length - 2,
                      ),
                  oldPrice: data[index]["old_price"],
                  rating: (data[index]['rating'] == 0 ||
                          data[index]['rating'] == null)
                      ? 0
                      : double.tryParse(
                          data[index]['rating'].toString().substring(0, 3),
                        ),
                  article: data[index]['article'],
                  discount: data[index]['discount'],
                  reviewsCount: data[index]['reviews_count'],
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
