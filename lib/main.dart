import 'package:flutter/material.dart';

import 'category_item.dart';
import 'model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Exercise Catalog',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: MyHomePage(title: 'Exercise Catalog'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: categoryItems.length,
        itemBuilder: (context, index) => CategoryListItem(categoryItem: categoryItems[index],) ,
      )
    );
  }
}


class CategoryListItem extends StatelessWidget {
  CategoryListItem({this.categoryItem});

  final CategoryItem categoryItem;


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => categoryItem.route)),
      child: Container(
        width: width,
          height: height / 6,
          child: Card(
          elevation: 8.0,
          margin: EdgeInsets.all(8.0),
          shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(8.0),
          ),
          child: Center(child: Text(categoryItem.title)),
          )
      ),
    );
  }
}
