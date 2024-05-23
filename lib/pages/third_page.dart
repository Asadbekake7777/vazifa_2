import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Image Loading",
        ),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return FadeInImage.assetNetwork(
            placeholder: 'assets/placeholder.png',
            image:
                'https://images.hdqwalls.com/wallpapers/skye-united-kingdom-8k-yh.jpg',
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}

