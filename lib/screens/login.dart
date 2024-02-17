import 'package:flutter/material.dart';
import 'package:math_app/constants/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: 2, vsync: this); // Set the number of tabs
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 3, 14, 58),
      body: Column(
        children: <Widget>[
          Container(
            height: size.height * 0.3,
            child: Stack(
              children: <Widget>[
                Container(
                  height: size.height * 0.3 - 30,
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(36),
                      bottomRight: Radius.circular(36),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    height: 54,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 3, 14, 58),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: TabBar(
                      controller: _tabController,
                      indicator: BoxDecoration(
                        color: Colors.green[300],
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.white,
                      tabs: const [
                        Tab(text: 'Login'),
                        Tab(text: 'sighn up'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: TabBarView(
                controller: _tabController,
                children: [
                  Center(
                    child: Text("Chats Pages"),
                  ),
                  Center(
                    child: Text("Status Pages"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
