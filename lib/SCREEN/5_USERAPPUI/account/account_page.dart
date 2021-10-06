import 'package:flutter/material.dart';

import 'package:officialdemo_v1/SCREEN/5_USERAPPUI/account/bodyaccountpage.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.amber,
      body: BodyAccount(),
    );
  }
}
