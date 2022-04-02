// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:tokoto/Model/catagory_model.dart';
import 'package:tokoto/Widgets/Custom/custom_home_appbar.dart';
import 'package:tokoto/Widgets/Parts/catagory_box.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({Key? key}) : super(key: key);
  static const String routeName = '/home';
  static Route route() {
    return MaterialPageRoute(
        builder: (_) => const Home_Screen(),
        settings: const RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Custom_home_appbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: Catagory.catagories.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Catagory_box(
                      catagory: Catagory.catagories[index],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
