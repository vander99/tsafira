import 'package:client/authentication_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: constant_identifier_names

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hotels Bookings',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [SearchSection(), HotelSection()],
          ),
        ));
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => new Size.fromHeight(50);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.grey[800],
          size: 20,
        ),
        onPressed: null,
      ),
      title: const Text(
        'Explore',
        style: TextStyle(
          color: Colors.black,
          fontSize: 22,
          fontWeight: FontWeight.w800,
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
    );
  }
}

class SearchSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey[200],
        padding: const EdgeInsets.fromLTRB(10, 25, 10, 10),
        child: Column(
          children: [
            Row(children: [
              Expanded(
                  child: Container(
                      padding: const EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 4,
                              offset: Offset(0, 3))
                        ],
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                            hintText: 'Trouver une ville',
                            contentPadding: EdgeInsets.all(10),
                            border: InputBorder.none),
                      ))),
              const SizedBox(width: 10),
              Container(height: 50, width: 100, color: Colors.green)
            ]),
            Container(height: 50, color: Colors.red),
          ],
        ));
  }
}

class HotelSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(height: 1200, color: Colors.white);
  }
}
