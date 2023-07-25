import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/data/repository/products_aka_catalog/products_api.dart';
import 'package:shopping_app/pages/product_page/widget/product_widget.dart';

@RoutePage()
class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  ProductsApi get productsApi => context.read();

  Future loadProducts() async {
    try {
      var request = await productsApi.getProducts({});
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
      body: NestedScrollView(
        headerSliverBuilder: (_, __) => [
          SliverAppBar(
            title: Text(
              'Товары',
              style: themeData.textTheme.headlineMedium,
            ),
            centerTitle: true,
          ),
          SliverToBoxAdapter(
            child: Container(
              // height: 50,
              padding: const EdgeInsets.only(bottom: 5),
              margin: const EdgeInsets.only(
                left: 16,
                top: 5,
                right: 16,
                bottom: 5,
              ),
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.10),
                  ),
                ],
              ),
              child: TextFormField(
                maxLines: 1,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(vertical: 0),
                  prefix: SizedBox(
                    width: 50,
                    // height: 40,
                    child: Center(
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.search),
                      ),
                    ),
                  ),
                  hintText: 'Поиск',
                  hintStyle: themeData.textTheme.headlineSmall?.copyWith(),
                ),
              ),
            ),
          )
        ],
        body: FutureBuilder(
          future: loadProducts(),
          builder: (context, snapshot) {
            if (snapshot.data != null) {
              // debugPrint("snapshot ${snapshot.data}");
              var data = snapshot.data;
              return GridView.builder(
                itemCount: data.length,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 220,
                  mainAxisExtent: 250,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 5,
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
      ),
    );
  }
}
