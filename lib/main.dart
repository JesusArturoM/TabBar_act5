import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicatorColor: Colors.amber,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 10,
            tabs: [
              Tab(icon: Icon(Icons.coronavirus)),
              Tab(icon: Icon(Icons.local_pizza)),
              Tab(icon: Icon(Icons.add_call)),
              Tab(icon: Icon(Icons.account_circle)),
            ],
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50), // Creates border
                color: Color(0xff20583c)),
          ),
          title: const Text('Tabs Demo'),
        ),
        body: const TabBarView(
          children: [
            Icon(Icons.coronavirus, size: 350),
            Icon(Icons.local_pizza, size: 350),
            Icon(Icons.add_call, size: 350),
            Icon(Icons.account_circle, size: 350),
          ],
        ),
      ),
    );
  }
}
