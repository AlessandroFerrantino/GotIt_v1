import 'package:flutter/material.dart';
import 'package:officialdemo_v1/SCREEN/5_USERAPPUI/account/account_page.dart';
import 'package:officialdemo_v1/SCREEN/5_USERAPPUI/chats/chat_page.dart';
import 'package:officialdemo_v1/SCREEN/5_USERAPPUI/favorite/favorite_page.dart';
import 'package:officialdemo_v1/SCREEN/5_USERAPPUI/home/home_page.dart';
import 'package:officialdemo_v1/SCREEN/5_USERAPPUI/search/search_page.dart';
import 'package:officialdemo_v1/widget/theme_colors.dart';

class MainUserPage extends StatelessWidget {
  const MainUserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GotIT',
      theme: ThemeData(
        primaryColor: ThemeColors.primaryColor,
        scaffoldBackgroundColor: ThemeColors.scaffoldBgColor,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  String title = 'BottomNavigationBar';

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        children: <Widget>[
          //MessagesScreen(), //per verificare se funziona
          //per verificare se funziona
          HomePage(),
          MessagePage(),
          SearchPage(),
          FavoritePage(),
          AccountPage(),
        ],
        // If you want to disable swiping in tab the use below code
        physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
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
                    Icons.home,
                    size: 35.0,
                  ),
                  //text: 'Search',
                ),
                Tab(
                  icon: Icon(
                    Icons.chat,
                    size: 35.0,
                  ),
                  //text: 'Department',
                ),
                Tab(
                  icon: Icon(
                    Icons.assistant_navigation,
                    size: 35.0,
                  ),
                  //text: 'Cart',
                ),
                Tab(
                  icon: Icon(
                    Icons.favorite_border,
                    size: 35.0,
                  ),
                  //text: 'Search',
                ),
                Tab(
                  icon: Icon(
                    Icons.account_box_rounded,
                    size: 35.0,
                  ),
                  //text: 'More',
                ),
              ],
              controller: _tabController,
            ),
          ),
        ),
      ),
    );
  }
}
