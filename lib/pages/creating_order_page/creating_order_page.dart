import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/data/repository/delivery/deliveries_api.dart';
import 'package:shopping_app/pages/creating_order_page/widgets/choose_delivery.dart';
import 'package:shopping_app/pages/creating_order_page/widgets/choose_payment.dart';
import 'package:shopping_app/pages/creating_order_page/widgets/profile_data.dart';

@RoutePage()
class CreatingOrderPage extends StatefulWidget {
  const CreatingOrderPage({super.key});

  @override
  State<CreatingOrderPage> createState() => _CreatingOrderPageState();
}

class _CreatingOrderPageState extends State<CreatingOrderPage> {
  DeliveryApi get delivery => context.read();

  bool deli = false;

  @override
  Widget build(BuildContext context) {
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
                    ProfileInfoWidget(),
                    ChooseDelivetyWidget(),
                    const Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 10),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text('Способы оплаты'),
                      ),
                    ),
                    PaymentWidget(),
                  ],
                ),
              )
            ];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: CustomScrollView(slivers: slivers),
            );
          },
        ),
      ),
    );
  }
}
