import 'package:flutter/material.dart';

void main() {
  runApp(const CatalogApp());
}

class CatalogApp extends StatelessWidget {
  const CatalogApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Catalog',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const CatalogScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Product {
  final String name;
  final String price;
  final String imageUrl;
  final String description;

  Product({
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.description,
  });
}

class CatalogScreen extends StatefulWidget {
  const CatalogScreen({super.key});

  @override
  State<CatalogScreen> createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  final List<Product> products = [
    Product(
      name: 'Wireless Headphones',
      price: '\$89.99',
      imageUrl: 'https://picsum.photos/id/20/300/300',
      description: 'Premium noise cancelling over-ear headphones',
    ),
    Product(
      name: 'Smart Watch',
      price: '\$129.99',
      imageUrl: 'https://picsum.photos/id/201/300/300',
      description: 'Fitness tracking with heart rate monitor',
    ),
    Product(
      name: 'Running Sneakers',
      price: '\$69.99',
      imageUrl: 'https://picsum.photos/id/21/300/300',
      description: 'Lightweight comfortable running shoes',
    ),
    Product(
      name: 'Cotton T-Shirt',
      price: '\$19.99',
      imageUrl: 'https://picsum.photos/id/64/300/300',
      description: 'Premium soft cotton classic fit',
    ),
    Product(
      name: 'Laptop Backpack',
      price: '\$49.99',
      imageUrl: 'https://picsum.photos/id/133/300/300',
      description: 'Waterproof with multiple compartments',
    ),
    Product(
      name: 'Bluetooth Speaker',
      price: '\$39.99',
      imageUrl: 'https://picsum.photos/id/180/300/300',
      description: 'Portable waterproof wireless speaker',
    ),
    Product(
      name: 'Sunglasses',
      price: '\$24.99',
      imageUrl: 'https://picsum.photos/id/201/300/300',
      description: 'UV protection polarized lenses',
    ),
    Product(
      name: 'Wireless Mouse',
      price: '\$29.99',
      imageUrl: 'https://picsum.photos/id/180/300/300',
      description: 'Ergonomic silent click mouse',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Product Catalog')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.75,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            final product = products[index];
            return Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(12),
                    ),
                    child: Image.network(
                      product.imageUrl,
                      height: 160,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          height: 160,
                          width: double.infinity,
                          color: Colors.grey[300],
                          child: const Icon(
                            Icons.image_not_supported,
                            size: 50,
                            color: Colors.grey,
                          ),
                        );
                      },
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Container(
                          height: 160,
                          width: double.infinity,
                          color: Colors.grey[200],
                          child: const Center(
                            child: CircularProgressIndicator(),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          product.price,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.green,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          product.description,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}