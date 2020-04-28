import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  List<String> images = [
    'https://t9.baidu.com/it/u=1307125826,3433407105&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1588668774&t=710339aa6b51cb83112b7deb556c2122',
    'https://t9.baidu.com/it/u=2268908537,2815455140&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1588668774&t=689f556bb44eb637fdf49bf75c5708db',
    'https://t9.baidu.com/it/u=1307125826,3433407105&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1588668774&t=710339aa6b51cb83112b7deb556c2122',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 50,
          padding: EdgeInsets.all(8),
          child: TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(8),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
              prefixIcon: Icon(Icons.search),
              suffixIcon: Icon(Icons.camera_alt),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
          height: 200.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemExtent: 300,
            itemCount: images.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                  title: Image.network(
                images[index],
                fit: BoxFit.contain,
              ));
            },
          ),
        )
      ],
    );
  }
}
