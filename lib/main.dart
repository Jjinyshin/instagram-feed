import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(CupertinoIcons.camera, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.paperplane, color: Colors.black),
            onPressed: () {},
          )
        ],
        title: Image.asset(
          'assets/logo.png',
          height: 32,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            "https://blogpfthumb-phinf.pstatic.net/MjAyMjA4MjZfMjc2/MDAxNjYxNDk3ODIzNTY2.C-68xdAph9gtJ0DFY8SlCg-EDIA9-luj2rxRRpfJI5gg.e3EDRAhef_1CcWWUesX0ey7oAfdfdY7zEbjE1e1chZYg.PNG.iwbm0312/profileImage.png",
            height: 400,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.heart, //material: Icons.favorite_border
                  color: Colors.black,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(CupertinoIcons.chat_bubble),
                color: Colors.black,
              ),
              Spacer(),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.bookmark,
                    color: Colors.black,
                  ))
            ],
          ),

          // 좋아요
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "268 likes",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // 설명
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "Stanford University - The campus is really wide and beautiful.\nThe weather was so nice and it was a very happy day 🌞",
            ),
          ),

          // 날짜
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
            child: Text(
              "January 1",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          )
        ],
      ),
    );
  }
}
