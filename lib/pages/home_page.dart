import 'package:flutter/material.dart';
import 'package:flutter_learning/models/catalog.dart';
import 'package:flutter_learning/widgets/drawer.dart';

import '../widgets/drawer.dart';
// import '../widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OUM'),
      ),
      // body: ListView.builder(
      //   itemCount: CatalogModel.items.length,
      //   itemBuilder: (context, index){
          
      //   },
      // ),
      drawer: const MyDrawer(),
    );
  }
}
