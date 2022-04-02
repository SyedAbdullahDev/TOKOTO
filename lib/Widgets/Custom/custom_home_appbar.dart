// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/controller.dart';

class Custom_home_appbar extends StatelessWidget with PreferredSizeWidget {
  Custom_home_appbar({Key? key}) : super(key: key);
  final Control _controller = Get.put(Control());
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(Icons.person),
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Current Location',
              style: Theme.of(context)
                  .textTheme
                  .headline3!
                  .copyWith(color: Colors.white)),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  _controller.city.value.toString(),
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(color: Colors.white),
                ),
              ),
              const Text(
                ',',
              ),
              const SizedBox(
                width: 5,
              ),
              Obx(
                () => Text(
                  _controller.address.value.toString(),
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(58);
}
