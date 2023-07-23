import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/data/repository/cart_repo/cart_api.dart';

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
      ),
      body: FutureBuilder(
        future: loadCart(),
        builder: (context, snapshot) {
          if (snapshot.data != null) {
            var productsData = snapshot.data['products'];
            // debugPrint('cartPage $productsData');
            return ListView.builder(
              itemBuilder: (context, index) {
                var selectedP = productsData[index];
                debugPrint('Product  ${selectedP['product']}');
                var amount = selectedP['count'];
                var productProperties = selectedP['product'];
                return ListTile(
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
