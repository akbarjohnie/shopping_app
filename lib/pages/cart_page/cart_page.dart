import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/data/repository/cart_repo/cart_api.dart';
import 'package:shopping_app/navigation/app_router.dart';

@RoutePage()
class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  CartApi get cartApi => context.read();

  Future loadCart() async {
    try {
      var request = await cartApi.calculateCart({});

      return request;
    } catch (e, stacktrace) {
      debugPrint('Someting went wrong: $e');
      debugPrint(stacktrace.toString());
    }
    return [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Выбранные товары'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.delivery_dining_sharp,
            ),
          )
        ],
      ),
      body: FutureBuilder(
        future: loadCart(),
        builder: (context, snapshot) {
          if (snapshot.data != null) {
            var productsData = snapshot.data['products'];
            List<Map<String, dynamic>> order = [];
            return Stack(
              alignment: AlignmentDirectional.bottomCenter,
              fit: StackFit.loose,
              children: [
                ListView.builder(
                  physics: const ScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics(),
                  ),
                  itemBuilder: (context, index) {
                    var selectedP = productsData[index];
                    // debugPrint('Product  ${selectedP['product']}');
                    var amount = selectedP['count'];
                    var productProperties = selectedP['product'];
                    return ListTile(
                      onTap: () {
                        order.add({
                          'product_id':
                              productsData[index]['product']['id'].toString(),
                          'count': productsData[index]['count'],
                        });
                      },
                      title: Text(
                        '${productProperties['name']}',
                      ),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Количество: $amount'),
                          Text(
                            'Цена: $amountх${productProperties['price']}',
                          ),
                        ],
                      ),
                    );
                  },
                  itemCount: productsData.length,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: ElevatedButton(
                    onPressed: () {
                      if (order.isNotEmpty) {
                        context.router.push(
                          CreatingOrderRoute(cart: order),
                        );
                      }
                    },
                    child: const Text('Оформить заказ'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 45.0),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      'Стоимость корзины: ${snapshot.data['price']}',
                      style: const TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ],
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
