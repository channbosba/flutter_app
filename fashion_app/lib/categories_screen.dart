import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE9C8FF),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
        margin: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xFFF1D8FF),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Icon(Icons.home, size: 28),
            IconButton(
              icon: const Icon(Icons.grid_view_rounded, size: 28),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CategoriesScreen(),
                  ),
                );
              },
            ),
            const Icon(Icons.shopping_cart_outlined, size: 28),
            const Icon(Icons.person_outline, size: 28),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back button and title
              Row(
                children: const [
                  Icon(Icons.arrow_back_ios_new, size: 24),
                  SizedBox(width: 8),
                  Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      shadows: [
                        Shadow(
                          color: Colors.grey,
                          offset: Offset(0.5, 1),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Grid of categories
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  children: const [
                    CategoryItem(
                      label: 'Shirt',
                      imagePath: 'assets/shirt.jpg',
                    ),
                    CategoryItem(
                      label: 'Accessory',
                      imagePath: 'assets/top1.jpg',
                    ),
                    CategoryItem(
                      label: 'Skirt',
                      imagePath: 'assets/top3.jpg',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String label;
  final String imagePath;

  const CategoryItem({
    super.key,
    required this.label,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            imagePath,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
