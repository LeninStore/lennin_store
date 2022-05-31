import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:lennin_app/globals/colors.dart';
import 'package:lennin_app/models/article.dart';
import 'package:lennin_app/pages/detail.dart';
import 'package:lennin_app/pages/draw.dart';
import 'package:lennin_app/widgets/card.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
        body: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            SizedBox(
              width: double.infinity,
              height: size.height * 0.065,
              child: const Padding(
                padding: EdgeInsets.all(9.0),
                child: Text(
                  'Populares',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.253,
              width: size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 7,
                itemBuilder: (context, index) {
                  return FadeInDown(
                    duration: const Duration(milliseconds: 300),
                    child: InkWell(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Detailpage(
                                  article: Article.articles[index + 7],
                                )));
                      },
                      child: MyCardd(
                        title: Article.articles[index + 7].title,
                        description: Article.articles[index + 7].description,
                        price: Article.articles[index + 7].price,
                        imgpath: Article.articles[index + 7].imgPath,
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: size.height * 0.065,
              child: const Padding(
                padding: EdgeInsets.all(9.0),
                child: Text(
                  'En tendencia',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.253,
              width: size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 7,
                itemBuilder: (context, index) {
                  return FadeInDown(
                    duration: const Duration(milliseconds: 300),
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
                },
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: size.height * 0.065,
              child: const Padding(
                padding: EdgeInsets.all(9.0),
                child: Text(
                  'Ofertas',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                'Damas',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                  fontFamily: 'Montserrat',
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12),
                  child: FadeIn(
                    duration: const Duration(milliseconds: 350),
                    child: InkWell(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Detailpage(
                                  article: Article.articles[5],
                                )));
                      },
                      child: MyCardd(
                        title: Article.articles[5].title,
                        description: Article.articles[5].description,
                        price: Article.articles[5].price,
                        imgpath: Article.articles[5].imgPath,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12),
                  child: FadeIn(
                    duration: const Duration(milliseconds: 350),
                    child: InkWell(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Detailpage(
                                  article: Article.articles[6],
                                )));
                      },
                      child: MyCardd(
                        title: Article.articles[6].title,
                        description: Article.articles[6].description,
                        price: Article.articles[6].price,
                        imgpath: Article.articles[6].imgPath,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                'Caballeros',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                  fontFamily: 'Montserrat',
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12),
                  child: FadeIn(
                    duration: const Duration(milliseconds: 350),
                    child: InkWell(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Detailpage(
                                  article: Article.articles[15],
                                )));
                      },
                      child: MyCardd(
                        title: Article.articles[15].title,
                        description: Article.articles[15].description,
                        price: Article.articles[15].price,
                        imgpath: Article.articles[15].imgPath,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12),
                  child: FadeIn(
                    duration: const Duration(milliseconds: 350),
                    child: InkWell(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Detailpage(
                                  article: Article.articles[16],
                                )));
                      },
                      child: MyCardd(
                        title: Article.articles[16].title,
                        description: Article.articles[16].description,
                        price: Article.articles[16].price,
                        imgpath: Article.articles[16].imgPath,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Align(
              child: Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: SizedBox(
                      height: size.height * 0.055,
                      width: size.width * 0.6,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'allProducts');
                        },
                        child: const Text(
                          'Ver todos los productos',
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: mainColor, elevation: 0),
                      )),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: size.height * 0.065,
              child: const Padding(
                padding: EdgeInsets.all(9.0),
                child: Text(
                  'Más buscados',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.253,
              width: size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 7,
                itemBuilder: (context, index) {
                  return FadeInDown(
                    duration: const Duration(milliseconds: 300),
                    child: InkWell(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Detailpage(
                                  article: Article.articles[index + 10],
                                )));
                      },
                      child: MyCardd(
                        title: Article.articles[index + 10].title,
                        description: Article.articles[index + 10].description,
                        price: Article.articles[index + 10].price,
                        imgpath: Article.articles[index + 10].imgPath,
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: size.height * 0.065,
              child: const Padding(
                padding: EdgeInsets.all(9.0),
                child: Text(
                  'Acerca de nosotros',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                              titleTextStyle: TextStyle(
                                  color: mainColor,
                                  fontSize: size.height * 0.03,
                                  fontWeight: FontWeight.bold),
                              title: const Text('Informes'),
                              content: const Text(
                                  'Te redireccionaremos al perfil de facebook de la tienda para una mejor comunicación. '),
                              actions: [
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(context, 'Cancelar'),
                                  child: Text(
                                    'Cancelar',
                                    style: TextStyle(
                                        color: mainColor,
                                        fontSize: size.height * 0.02),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () async {
                                    var url =
                                        'https://m.facebook.com/Ciber-360-260918764319191';
                                    if (await canLaunchUrlString(url)) {
                                      await launchUrlString(url,
                                          mode: LaunchMode.platformDefault);
                                    }
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    'Aceptar',
                                    style: TextStyle(
                                        color: mainColor,
                                        fontSize: size.height * 0.02),
                                  ),
                                ),
                              ],
                            ));
                    return;
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 19.0),
                    child: SizedBox(
                        height: size.height * 0.1,
                        width: size.width * 0.15,
                        child: Image.asset('assets/face.png')),
                  ),
                ),
                // GestureDetector(
                //   onTap: () {
                //     showDialog(
                //         context: context,
                //         builder: (BuildContext context) => AlertDialog(
                //               titleTextStyle: TextStyle(
                //                   color: mainColor,
                //                   fontSize: size.height * 0.03,
                //                   fontWeight: FontWeight.bold),
                //               title: const Text('Informes'),
                //               content: const Text(
                //                   'Te redireccionaremos al perfil de whatsapp de la tienda para una mejor comunicación. '),
                //               actions: [
                //                 TextButton(
                //                   onPressed: () =>
                //                       Navigator.pop(context, 'Cancelar'),
                //                   child: Text(
                //                     'Cancelar',
                //                     style: TextStyle(
                //                         color: mainColor,
                //                         fontSize: size.height * 0.02),
                //                   ),
                //                 ),
                //                 TextButton(
                //                   onPressed: () async {
                //                     var url =
                //                         'https://wa.me/524922663277?text=¡Me+interesa+obtener+más+informacion+de+tu+tienda!😁';
                //                     if (await canLaunchUrlString(url)) {
                //                       await launchUrlString(url,
                //                           mode: LaunchMode.platformDefault);
                //                     }
                //                     Navigator.pop(context);
                //                   },
                //                   child: Text(
                //                     'Aceptar',
                //                     style: TextStyle(
                //                         color: mainColor,
                //                         fontSize: size.height * 0.02),
                //                   ),
                //                 ),
                //               ],
                //             ));
                //     return;
                //   },
                //   child: Padding(
                //     padding: const EdgeInsets.only(right: 1.0),
                //     child: SizedBox(
                //         height: size.height * 0.1,
                //         width: size.width * 0.16,
                //         child: Image.asset('assets/wa.png')),
                //   ),
                // ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                              titleTextStyle: TextStyle(
                                  color: mainColor,
                                  fontSize: size.height * 0.03,
                                  fontWeight: FontWeight.bold),
                              title: const Text('Informes'),
                              content: const Text(
                                  'Te redireccionaremos al perfil de instagram de la tienda para una mejor visualización de los productos. '),
                              actions: [
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(context, 'Cancelar'),
                                  child: Text(
                                    'Cancelar',
                                    style: TextStyle(
                                        color: mainColor,
                                        fontSize: size.height * 0.02),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () async {
                                    var url =
                                        'https://www.instagram.com/lenin.sc12/';
                                    if (await canLaunchUrlString(url)) {
                                      await launchUrlString(url,
                                          mode: LaunchMode.platformDefault);
                                    }
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    'Aceptar',
                                    style: TextStyle(
                                        color: mainColor,
                                        fontSize: size.height * 0.02),
                                  ),
                                ),
                              ],
                            ));
                    return;
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: SizedBox(
                        height: size.height * 0.1,
                        width: size.width * 0.20,
                        child: Image.asset('assets/insta.jpg')),
                  ),
                )
              ],
            ),
            const Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  'Contactanos',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 18,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                          titleTextStyle: TextStyle(
                              color: mainColor,
                              fontSize: size.height * 0.03,
                              fontWeight: FontWeight.bold),
                          title: const Text('Mapa'),
                          content: const Text(
                              'Te redireccionaremos a la dirección física de la tienda en Google Maps. Esta dirección es privada. Aceptas los terminos y condiciones? '),
                          actions: [
                            TextButton(
                              onPressed: () =>
                                  Navigator.pop(context, 'Cancelar'),
                              child: Text(
                                'Cancelar',
                                style: TextStyle(
                                    color: mainColor,
                                    fontSize: size.height * 0.02),
                              ),
                            ),
                            TextButton(
                              onPressed: () async {
                                var url =
                                    'https://goo.gl/maps/FUr3ZbMndWYTy4Kw9';
                                if (await canLaunchUrlString(url)) {
                                  await launchUrlString(url,
                                      mode: LaunchMode.platformDefault);
                                }
                                Navigator.pop(context);
                              },
                              child: Text(
                                'Aceptar',
                                style: TextStyle(
                                    color: mainColor,
                                    fontSize: size.height * 0.02),
                              ),
                            ),
                          ],
                        ));
                return;
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                    height: size.height * 0.25,
                    width: size.width * 0.9,
                    child: Image.asset('assets/maps.jpg')),
              ),
            ),
            Align(
              child: Padding(
                padding: const EdgeInsets.only(top: 25.0, bottom: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: SizedBox(
                      height: size.height * 0.055,
                      width: size.width * 0.6,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'aboutUs');
                        },
                        child: const Text(
                          'Sobre nosotros...',
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: mainColor, elevation: 0),
                      )),
                ),
              ),
            ),
          ],
        ));
  }
}//
