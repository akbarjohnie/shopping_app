import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/data/repository/user_info/user_info_api.dart';

class ProfileInfoWidget extends StatefulWidget {
  const ProfileInfoWidget({super.key});

  @override
  State<ProfileInfoWidget> createState() => _ProfileInfoWidgetState();
}

class _ProfileInfoWidgetState extends State<ProfileInfoWidget> {
  UserInfoApi get userInfo => context.read();

  Future loadInfo() async {
    try {
      debugPrint("UserInfo");
      var request = await userInfo.getUserInfo();

      return request;
    } catch (e, stacktrace) {
      debugPrint('Someting went wrong: $e');
      debugPrint(stacktrace.toString());
    }
    return [];
  }

  @override
  Widget build(BuildContext context) {
    return const ListBody(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text('Данные получателя'),
        ),
        //TODO: Добавить контроллеры
        Padding(
          padding: EdgeInsets.only(
            top: 10,
            right: 20,
            bottom: 10,
            left: 10,
          ),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'ФИО',
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Телефон',
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'E-mail',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
