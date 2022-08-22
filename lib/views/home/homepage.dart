import 'package:e_commerce/views/sherdWidgit/productItem.dart';
import 'package:flutter/material.dart';

import '../../models/products.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Image.network(
                "https://www.bing.com/images/search?view=detailV2&ccid=w8yXeoJv&id=3EF1E520660E1F9B36E17961631BF5A05688337C&thid=OIP.w8yXeoJvu0ppSlB-HHlNAQHaE7&mediaurl=https%3a%2f%2fwww.loveyourclothes.org.uk%2fsites%2fdefault%2ffiles%2flyc-clothesrail-header.jpg&cdnurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.c3cc977a826fbb4a694a507e1c794d01%3frik%3dfDOIVqD1G2NheQ%26pid%3dImgRaw%26r%3d0&exph=1037&expw=1556&q=image+clothes&simid=607998401248959780&FORM=IRPRST&ck=35B5F0D89254E7C7510088DA3D8B5C54&selectedIndex=3&ajaxhist=0&ajaxserp=0",
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
                  buildHeaderOfList(
                      title: "Sale", subTitle: "Super Summer Sale!!"),
                  const SizedBox(height: 8.0),
                  SizedBox(
                    height: 300,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: dummyProducts.length,
                        itemBuilder: (context, int index) {
                          return listItem(dummyProducts[index], context);
                        }),
                  ),
                  buildHeaderOfList(
                      title: "New", subTitle: "Super New Products!!"),
                  const SizedBox(height: 8.0),
                  SizedBox(
                    height: 300,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: dummyProducts.length,
                        itemBuilder: (context, int index) {
                          return listItem(dummyProducts[index], context);
                        }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
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
