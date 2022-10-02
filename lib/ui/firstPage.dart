import 'package:flutter/material.dart';

import 'SecondPage.dart';


class MainPage extends StatelessWidget {
  List<Map<String, dynamic>> data = [
    {'title': '', 'image': ""},
    {'title': 'Title', 'image': Icons.image},
    {'title': 'Title', 'image': Icons.image},
    {'title': 'Title', 'image': Icons.image},
    {'title': 'Title', 'image': Icons.image},
    {'title': 'Title', 'image': Icons.image},
  ];

  MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
            child: Container(
              color: Colors.black,
              height: 1.0,
            ),
            preferredSize: Size.fromHeight(2.0)),
        backgroundColor: Colors.white10,
        elevation: 0,
        leading: Icon(
          Icons.home,
          color: Colors.black,
          size: 30,
        ),
        actions: [
          Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                Icons.search,
                color: Colors.black,
                size: 30,
              ))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(25),
            child: Text(
              'Superhero Team',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 20),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 12.0,
            ),
            itemBuilder: (context, index) {
              if (index == 0)
                return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => SecondPage()));
                    },
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color: Colors.white),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.black,
                            size: 30,
                          ),
                          Text(
                            'New board',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ));
              else
                return CustomGrid(
                    title: data[index]['title'], icon: data[index]['image']);
            },
            itemCount: data.length,
          )
        ],
      ),
    );
  }

  Widget CustomGrid({required String title, required IconData icon}) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 220,
            height: 130,
            decoration: BoxDecoration(color: Colors.grey),
            child: Icon(icon),
          ),
          Container(
              margin: EdgeInsetsDirectional.only(start: 10, top: 5),
              child: Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}
