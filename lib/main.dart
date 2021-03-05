import 'package:flutter/material.dart';
import 'package:helloflutter/rentalsepeda/mainRental.dart';
import 'package:helloflutter/tokoonline/mainToko.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  List<String> challengeList = ["TokoOnline","Rental Sepeda"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.green,
            expandedHeight: 200.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Challenge UI',
              ),
              background: Image.asset(
                'assets/img/desert.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(
              top: 10.0,
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 60.0,
            delegate: SliverChildBuilderDelegate(
              (context, index) => SingleItem(
                challengeList[index],
                index,
              ),
              childCount: challengeList.length,
            ),
          ),
        ],
      ),
    );
  }
}

class SingleItem extends StatelessWidget {
  String title;
  int index;
  SingleItem(String title, int index) {
    this.title = title;
    this.index = index;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(
        10.0,
        3.0,
        10.0,
        3.0,
      ),
      child: GestureDetector(
        onTap: () {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TokoOnline(),
              ),
            );
          } else if(index == 1){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> RentalSepeda(),),);
          }
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              10.0,
            ),
          ),
          elevation: 3.0,
          color: Colors.orangeAccent,
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
