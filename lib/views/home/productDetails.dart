import 'package:flutter/material.dart';

import '../../models/products.dart';

class ProductDetails extends StatelessWidget {
  final Products product;

  const ProductDetails({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    bool isFavorite = false;

    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Image.network(
            product.imgUrl,
            width: double.infinity,
            height: size.height * 0.55,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 8.0),
          const Padding(
              padding: EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 8.0,
          )),
        ],
      )),
    );
  }
}
