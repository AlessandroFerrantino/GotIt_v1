import 'package:flutter/material.dart';
import 'package:officialdemo_v1/SCREEN/5_USERAPPUI/account/account_page.dart';
import 'package:officialdemo_v1/SCREEN_SHOP/booking/booking_page.dart';
import 'package:officialdemo_v1/SCREEN_SHOP/chats/chatShoppage.dart';

import 'package:officialdemo_v1/widget/theme_colors.dart';

class MainShopPage extends StatelessWidget {
  const MainShopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GotIT',
      theme: ThemeData(
        primaryColor: ThemeColors.primaryColor,
        scaffoldBackgroundColor: ThemeColors.scaffoldBgColor,
      ),
      home: MyHomeShopPage(),
    );
  }
}

class MyHomeShopPage extends StatefulWidget {
  @override
  _MyHomeShopPageState createState() => _MyHomeShopPageState();
}

class _MyHomeShopPageState extends State<MyHomeShopPage>
    with SingleTickerProviderStateMixin {
  String title = 'BottomNavigationBar';

  late TabController _tabController1;

  @override
  void initState() {
    super.initState();
    _tabController1 = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController1.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        children: <Widget>[
          //MessagesScreen(), //per verificare se funziona
          //per verificare se funziona

          MessageShopPage(),
          BookingPage(),
          AccountPage(),
        ],
        // If you want to disable swiping in tab the use below code
        physics: NeverScrollableScrollPhysics(),
        controller: _tabController1,
      ),
      bottomNavigationBar: Container(
        child: ClipRRect(
          child: Container(
            height: 70,
            color: ThemeColors.scaffoldBgColor,
            child: TabBar(
              labelColor: ThemeColors.primaryColor,
              unselectedLabelColor: Colors.white,
              tabs: <Widget>[
                Tab(
                  icon: Icon(
                    Icons.chat,
                    size: 35.0,
                  ),
                  //text: 'Department',
                ),
                Tab(
                  icon: Icon(
                    Icons.assignment_outlined,
                    size: 35.0,
                  ),
                  //text: 'More',
                ),
                Tab(
                  icon: Icon(
                    Icons.account_box_rounded,
                    size: 35.0,
                  ),
                  //text: 'More',
                ),
              ],
              controller: _tabController1,
            ),
          ),
        ),
      ),
    );
  }
}
