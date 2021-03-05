import 'package:flutter/material.dart';

class TokoOnline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => FashionHomePage(),
        // "/kids/collections" : (context) => KidsCollectionPage()
      },
    );
  }
}

class FashionHomePage extends StatefulWidget {
  @override
  _FashionHomePageState createState() => _FashionHomePageState();
}

class _FashionHomePageState extends State<FashionHomePage> {
  int _homeIdx = 0;
  int _pageIdx = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _pageIdx);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 6.0,
                ),
                child: TextField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    prefix: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    hintText: "Search Products",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1.2)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1.2)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
