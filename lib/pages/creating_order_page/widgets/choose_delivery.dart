import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/data/client/delivery_api/deliveries_api.dart';

typedef SwitchVisibility = Function(bool);

class ChooseDelivetyWidget extends StatefulWidget {
  const ChooseDelivetyWidget({
    super.key,
    required this.visibility,
  });

  final SwitchVisibility visibility;

  @override
  State<ChooseDelivetyWidget> createState() => _ChooseDelivetyWidgetState();
}

class _ChooseDelivetyWidgetState extends State<ChooseDelivetyWidget> {
  DeliveryApi get deliveryInfo => context.read();

  get visibilityNotifier => context.watch<ValueNotifier<bool>>();

  DateTime? deliveryDate;

  DateFormat formatDate = DateFormat('dd MMMM', 'ru');

  bool checkBoxOne = false;
  bool checkBoxTwo = false;

  Future? deliveries;

  @override
  void initState() {
    super.initState();
    deliveries = loadInfo();
  }

  Future loadInfo() async {
    try {
      debugPrint("DeliveryInfo");
      var request = await deliveryInfo.getDeliveries(
        {},
      );
      return request;
    } catch (e, stacktrace) {
      debugPrint('Someting went wrong: $e');
      debugPrint(stacktrace.toString());
    }
    return [];
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: deliveries,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Column(
            children: [
              ListTile(
                onTap: () {
                  setState(() {
                    if (checkBoxTwo) {
                      checkBoxTwo = !checkBoxTwo;
                    }
                    checkBoxOne = !checkBoxOne;
                    visibility();
                  });
                },
                title: Text('${snapshot.data[0]['title']}'),
                subtitle: Text('${snapshot.data[0]['description']}'),
                trailing: checkBoxOne ? const Icon(Icons.check) : null,
              ),
              ListTile(
                onTap: () {
                  setState(() {
                    if (checkBoxOne) {
                      checkBoxOne = !checkBoxOne;
                    }
                    checkBoxTwo = !checkBoxTwo;
                    visibility();
                  });
                },
                title: Text('${snapshot.data[1]['title']}'),
                subtitle: Text('${snapshot.data[1]['description']}'),
                trailing: checkBoxTwo ? const Icon(Icons.check) : null,
              ),
              if (checkBoxTwo)
                const TextField(
                  decoration: InputDecoration(hintText: 'Адрес доставки'),
                ),
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(top: 20, bottom: 10),
                child: const Text('Выбор даты доставки'),
              ),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () async {
                    final chosenDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime.now(),
                      lastDate: DateTime.now().add(const Duration(days: 30)),
                    );
                    setState(() {
                      deliveryDate = chosenDate;
                      visibility();
                    });
                  },
                  child: Text(
                    deliveryDate == null
                        ? 'Выбрать дату'
                        : formatDate.format(deliveryDate!),
                  ),
                ),
              ),
            ],
          );
        }
        return const SizedBox.shrink();
      },
    );
  }

  void visibility() {
    if (checkBoxOne || checkBoxTwo && deliveryDate != null) {
      widget.visibility(true);
    }
    if (checkBoxOne == false && checkBoxTwo == false || deliveryDate == null) {
      widget.visibility(false);
    }
  }
}
