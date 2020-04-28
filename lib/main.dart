import 'package:flutter/material.dart';
import 'package:flutterapp/page/category.dart';
import 'package:flutterapp/page/discovery.dart';
import 'package:flutterapp/page/home.dart';
import 'package:flutterapp/page/profile.dart';
import 'package:flutterapp/page/shopping-cart.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
   return new MyHomePageState();
  }
  
}

class MyHomePageState extends State<MyHomePage> {
  final pages = [HomePage(), Category(), Discovery(), ShoppingCart(), Profile()];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("flutter_app"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.lightBlue,
          onTap: (index) => {
            setState(() => {
              currentIndex = index
            }),
          },
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页")),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), title: Text("分类")),BottomNavigationBarItem(
                icon: Icon(Icons.devices_other), title: Text("发现")),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), title: Text("购物车")),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text("我的")),
          ],
        ),
        body: pages[currentIndex]);
  }
}
