import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/data/client/products_api/products_api.dart';
import 'package:shopping_app/models/catalog/post/products/products_model.dart';
import 'package:shopping_app/pages/product_page/widget/product_widget.dart';

@RoutePage()
class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  ProductsApi get productsApi => context.read();

  Future<ProductsM> loadProducts() async {
    try {
      var request = await productsApi.getProducts();
      return request;
    } catch (e, stacktrace) {
      debugPrint('Someting went wrong: $e');
      debugPrint(stacktrace.toString());
      rethrow;
    }
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
            var data = snapshot.data;
            if (data != null) {
              // debugPrint("snapshot ${snapshot.data}");
              return GridView.builder(
                itemCount: data.count as int,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 220,
                  mainAxisExtent: 250,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 5,
                ),
                itemBuilder: (context, index) {
                  var res = data.results;
                  if (res.isNotEmpty) {
                    return ProductCardWidget(
                      id: res[index].id,
                      categoryName: res[index].name,
                      image: res[index].picture,
                      brand: res[index].brand,
                      price: res[index].price.toString().substring(
                            0,
                            res[index].price.toString().length - 2,
                          ),
                      oldPrice: res[index].oldPrice,
                      rating:
                          (res[index].rating == 0 || res[index].rating == null)
                              ? 0
                              : double.tryParse(
                                  res[index].rating.toString().substring(0, 3),
                                ),
                      article: res[index].article,
                      discount: res[index].discount,
                      reviewsCount: res[index].reviewsCount,
                    );
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
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
