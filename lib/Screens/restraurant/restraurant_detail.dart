// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:tokoto/Model/restraurant_model.dart';
import 'package:tokoto/Widgets/Parts/restaurant_info.dart';

class Restraurant_detail extends StatelessWidget {
  const Restraurant_detail({Key? key}) : super(key: key);
  static const String routeName = '/Restraurant_detail';
  static Route route() {
    return MaterialPageRoute(
        builder: (_) => const Restraurant_detail(),
        settings: const RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    Restraurant restraurant = Restraurant.restraurant[0];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(),
                  shadowColor: Colors.red,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/basket_screen');
                },
                child: const Text('Basket'),
              ),
            ],
          ),
        ),
        extendBodyBehindAppBar: true,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 255,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                      bottom: Radius.elliptical(
                          MediaQuery.of(context).size.width, 50)),
                  color: Colors.white,
                  image: DecorationImage(
                    image: NetworkImage(
                      restraurant.imageUrl,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Restaurant_info(restraurant: restraurant),
              ListView.builder(
                itemCount: restraurant.tags.length,
                itemBuilder: (context, index) {
                  return _Built_Menu_items(restraurant, context, index);
                },
              ),
            ],
          ),
        ));
  }

  Widget _Built_Menu_items(
      Restraurant restraurant, BuildContext context, int index) {
    return Container();
  }
}
