import 'package:flutter/material.dart';
import 'package:ge_flutter_task/widgets/leasing_tab_widget.dart';
import 'package:ge_flutter_task/widgets/tokens_tab_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: DefaultTabController(
        length: 2,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.notifications),
                  CircleAvatar(
                    radius: 16,
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Wallet"),
                  Text("Mobile Team"),
                ],
              ),
              SizedBox(
                height: 100,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      height: 90,
                      width: 130,
                      child: Column(
                        children: const [
                          Icon(Icons.qr_code),
                          Text("QR Code"),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 10),
                  itemCount: 6,
                ),
              ),
              const SizedBox(
                width: 200,
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.label,
                  labelColor: Colors.black,
                  tabs: [
                    Tab(
                      child: Text("Tokens"),
                    ),
                    Tab(
                      child: Text("Leasing"),
                    ),
                  ],
                ),
              ),
              IndexedStack(
                index: 0,
                children: [
                  TokensTabWidget(),
                  LeasingTabWidget(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
