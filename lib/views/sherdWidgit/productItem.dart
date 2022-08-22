import 'package:e_commerce/models/products.dart';
import 'package:flutter/material.dart';

Widget listItem(Products products, BuildContext context) {
  return Container(
    decoration: const BoxDecoration(),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.network(
                products.imgUrl,
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 50,
                height: 25,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: Colors.red,
                  ),
                  child: Text(
                    '${products.discountValue} %',
                    style: Theme.of(context).textTheme.caption!.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 8.0),
        Text(
          products.category,
          style: Theme.of(context).textTheme.caption!.copyWith(
                color: Colors.grey,
              ),
        ),
        const SizedBox(height: 6.0),
        Text(
          products.title,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
        const SizedBox(height: 6.0),
        Text(
          '${products.price}\$',
          style: Theme.of(context).textTheme.subtitle2!.copyWith(
                color: Colors.grey,
              ),
        ),
      ],
    ),
  );
}
