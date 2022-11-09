import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigation_with_nested_routing_tutorial/data/app_data.dart';
import 'package:auto_route/src/router/controller/controller_scope.dart';
import 'package:flutter_bottom_navigation_with_nested_routing_tutorial/widgets.dart';

class SingleParqueoPage extends StatelessWidget {
  final int parqueoId;
  const SingleParqueoPage({
    Key? key,
    @PathParam() required this.parqueoId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final parqueo = Parqueo.parqueos[parqueoId];
    return Scaffold(
      backgroundColor: parqueo.parqueoColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Parqueo #${parqueo.numeroParqueo.toString()}',
                style: const TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              ),
              MapaParqueo(
                  linkImagen:
                      'https://2.bp.blogspot.com/-rAvZDK7KWWU/W4GIDCyrHTI/AAAAAAAAAFI/cn250kQYsD8_u8P-6FkrBixQ3QZ4ApsxACLcBGAs/s1600/route_google_map.png',
                  numeroParqueadero: parqueo.numeroParqueo.toString()),
              const SizedBox(height: 30),
              const AutoBackButton(
                color: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}