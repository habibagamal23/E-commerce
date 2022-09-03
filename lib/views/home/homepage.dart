import 'package:e_commerce/views/sherdWidgit/listItem.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../controllers/firestoredb.dart';
import '../../models/products.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final database = Provider.of<Database>(context);

    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      Stack(children: [
        Image.network(
          'https://cdn1.expertreviews.co.uk/sites/expertreviews/files/2019/08/best_online_clothes_shops.jpg',
          width: double.infinity,
          height: size.height * 0.3,
          fit: BoxFit.cover,
        ),
        Opacity(
          opacity: 0.3,
          child: Container(
            width: double.infinity,
            height: size.height * 0.3,
            color: Colors.black,
          ),
        ),
        Text(
          "Street Clothes",
          style: Theme.of(context).textTheme.headline4!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
        )
      ]),
      const SizedBox(height: 24.0),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            buildHeaderOfList(title: "Sale", subTitle: "Super Summer Sale!!"),
            const SizedBox(height: 8.0),
            SizedBox(
              height: 300,
              child: StreamBuilder<List<Products>>(
                  stream: database.salesProductsStream(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.active) {
                      final products = snapshot.data;
                      if (products == null || products.isEmpty) {
                        return const Center(
                          child: Text('No Data Available!'),
                        );
                      }
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: products.length,
                        itemBuilder: (_, int index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListItemHome(product: products[index]),
                        ),
                      );
                    }
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }),
            ),
            buildHeaderOfList(title: "New", subTitle: "Super New Products!!"),
            const SizedBox(height: 8.0),
            SizedBox(
              height: 300,
              child: StreamBuilder<List<Products>>(
                  stream: database.newProductsStream(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.active) {
                      final products = snapshot.data;
                      if (products == null || products.isEmpty) {
                        return const Center(
                          child: Text('No Data Available!'),
                        );
                      }
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: products.length,
                        itemBuilder: (_, int index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListItemHome(product: products[index]),
                        ),
                      );
                    }
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }),
            ),
          ],
        ),
      )
    ])));
  }

  Widget buildHeaderOfList(
      {required String title, required String subTitle, VoidCallback? onTap}) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headline4!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
          ),
          InkWell(
            child: Text(
              "veiw All",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            onTap: onTap,
          )
        ],
      ),
      Text(
        subTitle,
        style: Theme.of(context).textTheme.subtitle1!.copyWith(
              color: Colors.grey,
            ),
      ),
    ]);
  }
}
