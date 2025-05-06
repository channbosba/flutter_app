import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDD6E5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Back Button & Title
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back_ios_new_rounded),
                      onPressed: () => Navigator.pop(context),
                    ),
                    const Text(
                      'Product Detail',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        shadows: [
                          Shadow(color: Colors.black26, blurRadius: 1),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                // Main Image
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset('assets/top1.jpg'), // Replace with your image
                ),

                const SizedBox(height: 16),

                // Thumbnails
                SizedBox(
                  height: 80,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      _thumbnail('assets/top2.jpg'),
                      _thumbnail('assets/top3.jpg'),
                      _thumbnail('assets/top4.jpg'),
                    ],
                  ),
                ),

                const SizedBox(height: 16),

                // Product Info
                const Text(
                  'yoona collection',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                const Text(
                  '\$17.99',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 10),
                const Text(
                  'This is a beautiful soft-fabric top, perfect for casual and semi-formal outfits. Available in various colors and sizes.',
                  style: TextStyle(height: 1.4),
                ),

                const SizedBox(height: 20),

                // Size Selector
                const Text('Size:', style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                Row(
                  children: ['XS', 'S', 'M', 'L'].map((size) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: ChoiceChip(
                        label: Text(size),
                        selected: size == 'XS',
                        selectedColor: Colors.brown[200],
                      ),
                    );
                  }).toList(),
                ),

                const SizedBox(height: 16),

                // Color Selector
                const Text('Color:', style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Colors.red,
                    Colors.yellow[200],
                    Colors.blue,
                    Colors.purple[200],
                  ].map((color) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: CircleAvatar(
                        radius: 12,
                        backgroundColor: color,
                      ),
                    );
                  }).toList(),
                ),

                const SizedBox(height: 24),

                // Buttons
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Colors.black),
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          backgroundColor: Colors.white,
                        ),
                        child: const Text('Add to Cart',
                            style: TextStyle(color: Colors.black)),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          padding: const EdgeInsets.symmetric(vertical: 14),
                        ),
                        child: const Text('Check out'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _thumbnail(String imagePath) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(imagePath, height: 80, width: 60, fit: BoxFit.cover),
      ),
    );
  }
}
