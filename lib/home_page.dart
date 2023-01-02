import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'feed.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // 이미지 list
    final List<String> images = [
      "https://blogpfthumb-phinf.pstatic.net/MjAyMjA4MjZfMjc2/MDAxNjYxNDk3ODIzNTY2.C-68xdAph9gtJ0DFY8SlCg-EDIA9-luj2rxRRpfJI5gg.e3EDRAhef_1CcWWUesX0ey7oAfdfdY7zEbjE1e1chZYg.PNG.iwbm0312/profileImage.png",
      "https://postfiles.pstatic.net/MjAyMzAxMDFfMjY0/MDAxNjcyNTAzMDgxNTgy.lLFr5oYu7HxMIq1_OimJNf4P0j0mxN26HGnPFhRvw10g.MqvXKEAvO3WHL3i1iORGkH7UwAA2XzRwSbMBzqJpwCIg.JPEG.iwbm0312/IMG_3441.jpg?type=w966",
      "https://postfiles.pstatic.net/MjAyMzAxMDFfMTE1/MDAxNjcyNTAzMDc3ODIy.3gDjMn12Nn6T9XKbe1XjqjhUeFHMRqXvY0xVEzuBgNgg.73k12NHvRJbFX7rlkvFjivhWQNHc4LFWER0cPEubh9wg.JPEG.iwbm0312/IMG_4825.jpg?type=w966",
      "https://postfiles.pstatic.net/MjAyMzAxMDFfMjUy/MDAxNjcyNTAzMDc2NTM2.yX4NveMZR2AE-eNAqkMWr0JB9y5NcDdaSx29Ue4JIfQg.KxUlenx27JW-Aerh2kUAbp5seo3lFwmMU6VNivSYcrIg.JPEG.iwbm0312/IMG_6870.JPG?type=w966",
      "https://postfiles.pstatic.net/MjAyMzAxMDFfMTk0/MDAxNjcyNTAzMDgwMjE3.D72vNrs_NmwWY-rUQ9jPXyihsLp7jS4Jlu7KKKik7gkg.3GP6dzT0Hz0CFJ8u1RkZkmG5FO3lCi9DGE1AQ3iHBdsg.JPEG.iwbm0312/IMG_7284.jpg?type=w966",
    ];

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
      body: ListView.builder(
        itemCount: images.length, // 이미지 리스트 원소 개수만큼 피드 보여주기
        itemBuilder: (context, index) {
          final image = images[index]; // index에 해당되는 이미지 경로 전달
          return Feed(
            imageUrl: image,
          ); // imageUrl 전달
        },
      ),
    );
  }
}
