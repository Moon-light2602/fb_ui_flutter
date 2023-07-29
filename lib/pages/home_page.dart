import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../tabs/friends_tab.dart';
import '../tabs/home_tab.dart';
import '../tabs/menu_tab.dart';
import '../tabs/notifications_tab.dart';
import '../tabs/profile_tab.dart';
import '../tabs/watch_tab.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 6,
        child: Scaffold(
          body: NestedScrollView(
            floatHeaderSlivers: true,
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
               SliverAppBar(
                toolbarHeight: 50,
                pinned: true,
                floating: true,
                title: const Text(
                    'facebook',
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.w600,
                ),
                ),
                actions: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                    ),
                    child: IconButton(
                      icon: const FaIcon(FontAwesomeIcons.add),
                      color: Colors.black,
                      padding: const EdgeInsets.all(5),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    alignment: Alignment.center,
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                    ),
                    child: IconButton(
                      icon: const FaIcon(FontAwesomeIcons.search, size: 20,),
                      color: Colors.black,
                      padding: const EdgeInsets.all(5),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                    alignment: Alignment.center,
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                    ),
                    child: IconButton(
                      icon: const FaIcon(FontAwesomeIcons.facebookMessenger),
                      color: Colors.black,
                      padding: const EdgeInsets.all(5),
                      onPressed: () {},
                    ),
                  ),
                ],
                bottom: const TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorColor: Colors.blue,
                    indicatorWeight: 1,
                    tabs: [
                      Tab(icon: Icon(Icons.home, size: 25.0)),
                      Tab(icon: Icon(Icons.people, size: 25.0)),
                      Tab(icon: Icon(Icons.ondemand_video, size: 25.0)),
                      Tab(icon: Icon(Icons.account_circle, size: 25.0)),
                      Tab(icon: Icon(Icons.notifications, size: 25.0)),
                      Tab(icon: Icon(Icons.menu, size: 25.0))
                    ]
                ),
              ),
            ],

            body: TabBarView(
                children: [
                  const HomeTab(),
                  FriendsTab(),
                  WatchTab(),
                  ProfileTab(),
                  const NotificationsTab(),
                  MenuTab()
                ]),
              )
          ),
        );
  }
}

