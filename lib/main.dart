import 'package:flutter/material.dart';
import 'package:ge_flutter_task/widgets/bottom_sheet_widget.dart';
import 'package:ge_flutter_task/widgets/home_item_card.dart';
import 'package:ge_flutter_task/widgets/leasing_tab_widget.dart';
import 'package:ge_flutter_task/widgets/tokens_tab_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: DefaultTabController(
          length: 2,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(Icons.notifications),
                      CircleAvatar(
                        radius: 16,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Wallet",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Mobile Team",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.135,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: const [
                      HomeItemCard(
                        icon: Icons.qr_code_2,
                        title: "Your Address",
                        color: Colors.blue,
                        isSelected: true,
                      ),
                      HomeItemCard(
                        icon: Icons.person,
                        title: "Aliases",
                        color: Colors.white,
                      ),
                      HomeItemCard(
                        icon: Icons.toggle_off,
                        title: "Balance",
                        color: Colors.white,
                      ),
                      HomeItemCard(
                        icon: Icons.swap_calls,
                        title: "Receive",
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: TabBar(
                      onTap: (value) {
                        setState(() {
                          selectedIndex = value;
                        });
                      },
                      isScrollable: true,
                      indicatorSize: TabBarIndicatorSize.label,
                      labelColor: Colors.black,
                      padding: const EdgeInsets.all(0),
                      indicator: const UnderlineTabIndicator(
                        borderSide: BorderSide(width: 2.5, color: Colors.blue),
                        insets: EdgeInsets.only(
                          right: 26.0,
                        ),
                      ),
                      tabs: const [
                        Padding(
                          padding: EdgeInsets.only(top: 12.0, bottom: 6.0),
                          child: Text("Tokens"),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 12.0, bottom: 6.0),
                          child: Text("Leasing"),
                        ),
                      ],
                    ),
                  ),
                ),
                IndexedStack(
                  index: selectedIndex,
                  children: const [
                    TokensTabWidget(),
                    LeasingTabWidget(),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            if (value == 2) {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return const BottomSheetWidget();
                },
              );
            }
          },
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.wallet), label: 'Wallet'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.swap_horiz), label: 'Swap'),
            BottomNavigationBarItem(
                icon: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(5),
                  child: const Icon(
                    Icons.add,
                    color: Colors.blue,
                  ),
                ),
                label: ''),
            const BottomNavigationBarItem(
                icon: Icon(Icons.list), label: 'List'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
          ],
        ),
      ),
    );
  }
}
