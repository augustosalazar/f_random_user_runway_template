import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/user_controller.dart';

class UserListPage extends StatelessWidget {
  UserListPage({super.key});
  final UserController userController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Contact flick"),
      ),
      body: Column(
        children: [
          Expanded(
              child: Center(
                  child: Text(
            'Some name',
            style: Theme.of(context).textTheme.headlineSmall,
          ))),
          Expanded(
            flex: 4,
            child: GestureDetector(
              onHorizontalDragUpdate: (details) {
                // Note: Sensitivity is integer used when you don't want to mess up vertical drag
                if (details.delta.dx > 9) {
                  print('r');
                } else if (details.delta.dx < -1) {
                  //Left Swipe
                  print('l');
                }
              },
              child: Container(
                margin: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://randomuser.me/api/portraits/men/74.jpg'),
                      fit: BoxFit.fitWidth),
                ),
              ),
            ),
          ),
          Expanded(
              child: Center(
            child: IconButton(
                onPressed: () => print('ss'),
                icon: Icon(
                  size: 70,
                  Icons.favorite,
                  color: Theme.of(context).colorScheme.primary,
                )),
          )),
        ],
      ),
    );
  }
}
