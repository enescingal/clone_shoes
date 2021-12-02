import 'package:clone_shoes/theme/color.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      body: Center(
        child: Text(
          "Account Page",
          style: TextStyle(color: black),
        ),
      ),
    );
  }
}
