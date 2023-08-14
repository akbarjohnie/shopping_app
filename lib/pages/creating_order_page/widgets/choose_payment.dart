import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/data/client/payment_api/payment_api.dart';

class PaymentWidget extends StatefulWidget {
  const PaymentWidget({
    super.key,
  });

  @override
  State<PaymentWidget> createState() => _PaymentWidgetState();
}

class _PaymentWidgetState extends State<PaymentWidget> {
  PaymentApi get choosePayment => context.read();
  bool chO = false;
  bool chT = false;
  bool chTT = false;

  Future? data;

  Future loadPayment() async {
    try {
      debugPrint('PaymentInfo');
      var request = await choosePayment.payment({});

      return request;
    } catch (e, stacktrace) {
      debugPrint('Someting went wrong: $e');
      debugPrint(stacktrace.toString());
    }
    return [];
  }

  @override
  void initState() {
    super.initState();
    data = loadPayment();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: FutureBuilder(
        future: data,
        builder: (context, snapshot) {
          // TODO: добавить появление трейлинга
          // check при нажатии на соответствующее поле
          if (snapshot.hasData) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 10),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text('Способы оплаты'),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      setState(() {
                        if (chT) {
                          chT = !chT;
                        }
                        if (chTT) {
                          chTT = !chTT;
                        }
                        chO = !chO;
                      });
                    },
                    title: Text('${snapshot.data[0]['title']}'),
                    subtitle: Text('${snapshot.data[0]['description']}'),
                    leading: SizedBox(
                      height: 25,
                      child: Image.network(
                        'https://static.tildacdn.com/tild3432-3130-4934-b664-393962633431/free-icon-wallet-690.png',
                      ),
                    ),
                    trailing: chO == true ? const Icon(Icons.check) : null,
                  ),
                  ListTile(
                    onTap: () {
                      setState(() {
                        if (chO) {
                          chO = !chO;
                        }
                        if (chTT) {
                          chTT = !chTT;
                        }
                        chT = !chT;
                      });
                    },
                    title: Text('${snapshot.data[1]['title']}'),
                    subtitle: Text('${snapshot.data[1]['description']}'),
                    leading: SizedBox(
                      height: 25,
                      child: Image.network(
                        'https://liveopencart.ru/image/cache/data/products/logo340live-400x400.png',
                      ),
                    ),
                    trailing: chT == true ? const Icon(Icons.check) : null,
                  ),
                  ListTile(
                    onTap: () {
                      setState(() {
                        if (chO) {
                          chO = !chO;
                        }
                        if (chT) {
                          chT = !chT;
                        }
                        chTT = !chTT;
                      });
                    },
                    title: Text('${snapshot.data[2]['title']}'),
                    subtitle: Text('${snapshot.data[2]['description']}'),
                    leading: SizedBox(
                      height: 25,
                      child: Image.network(
                        'https://static.tildacdn.com/tild3938-3133-4434-a164-386132366164/credit-cards.png',
                      ),
                    ),
                    trailing: chTT == true ? const Icon(Icons.check) : null,
                  ),
                ],
              ),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
