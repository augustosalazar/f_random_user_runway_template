import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loggy/loggy.dart';

import '../controllers/user_controller.dart';

class UserFlick extends StatefulWidget {
  UserFlick({super.key});

  @override
  State<UserFlick> createState() => _UserFlickState();
}

class _UserFlickState extends State<UserFlick> {
  final UserController userController = Get.find();

  @override
  Widget build(BuildContext context) {
    //logInfo(" build with ${userController.user.name}");
    return Column(
      children: [
        Expanded(
            child: Center(
                child: Obx(() => Text(
                      userController.user.name,
                      style: Theme.of(context).textTheme.headlineSmall,
                    )))),
        Expanded(
          flex: 4,
          child: GestureDetector(
            onHorizontalDragEnd: (details) {
              userController.getUser();
            },
            child: Obx(() => userController.started.value == false
                ? const Center(child: CircularProgressIndicator())
                : Container(
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(userController.user.url),
                          fit: BoxFit.fitWidth),
                    ),
                  )),
          ),
        ),
        Expanded(
            child: Center(
          child: IconButton(
              onPressed: () => logInfo('Add to fav'),
              icon: Icon(
                size: 70,
                Icons.favorite,
                color: Theme.of(context).colorScheme.primary,
              )),
        )),
      ],
    );
  }
}
