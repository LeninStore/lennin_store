import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:lennin_app/models/article.dart';
import 'package:lennin_app/pages/detail.dart';
import 'package:lennin_app/pages/draw.dart';
import 'package:lennin_app/widgets/card.dart';

class AllProducts extends StatefulWidget {
  const AllProducts({
    Key? key,
  }) : super(key: key);

  @override
  State<AllProducts> createState() => _AllProductsState();
}

class _AllProductsState extends State<AllProducts> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text(
          'LENIN STORE',
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              fontSize: 18,
              letterSpacing: 2),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: GridView.builder(
          clipBehavior: Clip.hardEdge,
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          itemCount: Article.articles.length,
          //scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 2.0,
              mainAxisSpacing: 2.0,
              mainAxisExtent: size.height * 0.26,
              childAspectRatio: 4),
          itemBuilder: ((context, index) {
            return FadeInDown(
              duration: const Duration(milliseconds: 650),
              child: InkWell(
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Detailpage(
                            article: Article.articles[index],
                          )));
                },
                child: MyCardd(
                  title: Article.articles[index].title,
                  description: Article.articles[index].description,
                  price: Article.articles[index].price,
                  imgpath: Article.articles[index].imgPath,
                ),
              ),
            );
          })),
    );
  }
}
