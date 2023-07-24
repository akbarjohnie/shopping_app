import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/data/repository/payment/payment_api.dart';

class PaymentWidget extends StatefulWidget {
  const PaymentWidget({super.key});

  @override
  State<PaymentWidget> createState() => _PaymentWidgetState();
}

class _PaymentWidgetState extends State<PaymentWidget> {
  PaymentApi get choosePayment => context.read();

  Future loadPayment() async {
    try {
      var request = await choosePayment.payment({});

      return request;
    } catch (e, stacktrace) {
      debugPrint('Someting went wrong: $e');
      debugPrint(stacktrace.toString());
    }
    return [];
  }

  Future? data;

  @override
  void initState() {
    super.initState();
    data = loadPayment();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: FutureBuilder(
        future: data,
        builder: (context, snapshot) {
          // TODO: добавить появление трейлинга
          // check при нажатии на соответствующее поле
          // bool? ch = false;
          return Column(
            children: [
              ListTile(
                // onTap: () {
                //   setState(() {
                //     ch = !ch!;
                //   });
                // },
                title: Text('${snapshot.data[0]['title']}'),
                subtitle: Text('${snapshot.data[0]['description']}'),
                // trailing: ch == null ? Icon(Icons.check) : null,
              ),
              ListTile(
                // onTap: () => ,
                title: Text('${snapshot.data[1]['title']}'),
                subtitle: Text('${snapshot.data[1]['description']}'),
              ),
              ListTile(
                // onTap: () => ,
                title: Text('${snapshot.data[2]['title']}'),
                subtitle: Text('${snapshot.data[2]['description']}'),
              ),
            ],
          );
        },
      ),
    );
  }
}
