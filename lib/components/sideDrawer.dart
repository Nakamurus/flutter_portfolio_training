import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/main.dart';
import 'package:portfolio/model/experience.dart';

class SideDrawer extends StatelessWidget {
  final List<String> companies;
  SideDrawer({this.companies});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: Text('Companies', style: TextStyle(fontSize: 16)),
            ),
          ),
          ...(companies.map((company) {
            return MaterialButton(
              child: Text(company),
              onPressed: () => {
                context.read(companyProvider).state = company,
                Navigator.pop(context)
              },
            );
          }))
        ],
      ),
    );
  }
}
