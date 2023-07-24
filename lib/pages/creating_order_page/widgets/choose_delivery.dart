import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/data/repository/delivery/deliveries_api.dart';

typedef VoidCallBack = Function(bool);

class ChooseDelivetyWidget extends StatefulWidget {
  const ChooseDelivetyWidget({
    super.key,
    this.callback,
  });

  final VoidCallBack? callback;

  @override
  State<ChooseDelivetyWidget> createState() => _ChooseDelivetyWidgetState();
}

class _ChooseDelivetyWidgetState extends State<ChooseDelivetyWidget> {
  DeliveryApi get deliveryInfo => context.read();

  DateTime? date;
  DateFormat formatDate = DateFormat('dd MMMM', 'ru');

  Future loadInfo() async {
    try {
      debugPrint("DeliveryInfo");
      var request = await deliveryInfo.getDeliveries(
        {
          // "products": [
          //   {"product_id": "16", "count": 1}
          // ]
        },
      );

      return request;
    } catch (e, stacktrace) {
      debugPrint('Someting went wrong: $e');
      debugPrint(stacktrace.toString());
    }
    return [];
  }

  Future<dynamic>? deliveries;

  @override
  void initState() {
    super.initState();
    deliveries = loadInfo();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: deliveries,
      builder: (context, snapshot) {
        bool checkBox = false;

        return Column(
          children: [
            ListTile(
              onTap: () {},
              title: Text('${snapshot.data[0]['title']}'),
              subtitle: Text('${snapshot.data[0]['description']}'),
              leading: Checkbox(
                value: checkBox,
                onChanged: (value) {
                  checkBox = !checkBox;
                  print(checkBox);
                  widget.callback!(checkBox);
                },
              ),
            ),
            ListTile(
              onTap: () {},
              title: Text('${snapshot.data[1]['title']}'),
              subtitle: Text('${snapshot.data[1]['description']}'),
              leading: Checkbox(
                value: checkBox,
                onChanged: (value) {
                  checkBox = !checkBox;
                  print(checkBox);
                  widget.callback!(checkBox);
                },
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(top: 20, bottom: 10),
              child: const Text('Выбор даты доставки'),
            ),
            SizedBox(
              width: 250,
              child: OutlinedButton(
                onPressed: () async {
                  final res = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now(),
                    lastDate: DateTime.now().add(const Duration(days: 10)),
                  );
                  setState(() {
                    date = res;
                  });
                },
                child: Text(
                  date == null ? 'Выбрать дату' : formatDate.format(date!),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
