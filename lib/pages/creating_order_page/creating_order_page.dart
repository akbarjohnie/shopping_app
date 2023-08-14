import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/data/client/order_api/order_api.dart';
import 'package:shopping_app/pages/creating_order_page/widgets/choose_delivery.dart';
import 'package:shopping_app/pages/creating_order_page/widgets/choose_payment.dart';
import 'package:shopping_app/pages/creating_order_page/widgets/profile_data.dart';

@RoutePage()
class CreatingOrderPage extends StatefulWidget {
  const CreatingOrderPage({
    super.key,
    required this.cart,
  });

  final List<List> cart;

  @override
  State<CreatingOrderPage> createState() => _CreatingOrderPageState();
}

class _CreatingOrderPageState extends State<CreatingOrderPage> {
  OrderApi get orderApi => context.read();

  bool deli = false;

  Future createOrder(
    List<Map<String, dynamic>> products,
  ) async {
    try {
      var request = await orderApi.createOrder(
        {
          'products': products,
          'user_name': 'Akbar Rashidov',
          'user_phone': '89008887711',
          'delivery_id': '1',
          'delivery_type': 'pickup',
          'payment_id': '1',
          'payment_type': 'cash',
        },
      );
      debugPrint(request);

      return request;
    } catch (e, stacktrace) {
      debugPrint('Someting went wrong: $e');
      debugPrint(stacktrace.toString());
    }
    return [];
  }

  @override
  Widget build(BuildContext context) {
    List<List> deliveryCart = widget.cart;
    print(deliveryCart);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Оформление заказа'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: FutureBuilder(
          builder: (context, snapshot) {
            final slivers = <Widget>[
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    const ProfileInfoWidget(),
                    ChooseDelivetyWidget(
                      visibility: (vis) {
                        setState(() {
                          deli = vis;
                        });
                      },
                    ),
                    if (deli) const PaymentWidget(),
                    if (deli)
                      const Divider(
                        height: 1,
                        thickness: 2,
                        indent: 10,
                        endIndent: 10,
                      ),
                    if (deli)
                      Container(
                        padding: const EdgeInsets.only(
                          top: 10,
                          bottom: 20,
                          left: 30,
                          right: 30,
                        ),
                        child: ElevatedButton(
                          onPressed: () async {
                            List<Map<String, dynamic>> abc = [];
                            for (int i = 0; i < deliveryCart.length; i++) {
                              abc.add(
                                {
                                  "product_id": deliveryCart[i][0],
                                  "count": deliveryCart[i][1],
                                },
                              );
                            }

                            await createOrder(abc);
                          },
                          child: const Text(
                            'Заказать',
                          ),
                        ),
                      )
                  ],
                ),
              )
            ];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: CustomScrollView(
                slivers: slivers,
              ),
            );
          },
        ),
      ),
    );
  }
}
