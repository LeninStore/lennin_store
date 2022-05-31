import 'package:flutter/material.dart';
import 'package:lennin_app/globals/colors.dart';
import 'package:lennin_app/models/article.dart';
import 'package:lennin_app/widgets/viewpic.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'dart:math';

class Detailpage extends StatefulWidget {
  final Article article;
  const Detailpage({Key? key, required this.article}) : super(key: key);

  @override
  State<Detailpage> createState() => _DetailpageState();
}

class _DetailpageState extends State<Detailpage> {
  bool click = true;
  final GlobalKey scaffold = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      key: scaffold,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                click = !click;
              });
            },
            icon:
                Icon((click == false) ? Icons.favorite : Icons.favorite_border),
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 8),
            child: Text(
              'Nuevo | ${randomNumer()} vendidos',
              style: TextStyle(
                  fontSize: size.height * 0.015, color: Colors.black54),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.article.title,
              style: TextStyle(fontSize: size.height * 0.027),
            ),
          ),
          Align(
            child: InkWell(
              onTap: () {
                Navigator.of(scaffold.currentContext!).push(MaterialPageRoute(
                    builder: (context) => ViewPic(
                          img: widget.article.imgPath,
                        )));
              },
              child: Ink(
                height: size.height * 0.35,
                width: size.width * 0.8,
                child: FittedBox(
                    fit: BoxFit.cover,
                    clipBehavior: Clip.hardEdge,
                    child: Image.asset(widget.article.imgPath)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 8.0),
            child: Text(
              '\$ ' + widget.article.price + ' MX',
              style: TextStyle(
                  fontSize: size.height * 0.028, fontWeight: FontWeight.bold),
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
                        title: const Text('Informes'),
                        content: const Text(
                            'Te redireccionaremos al perfil de instagram de la tienda para una mejor visualización de los productos. '),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'Cancelar'),
                            child: Text(
                              'Cancelar',
                              style: TextStyle(
                                  color: mainColor,
                                  fontSize: size.height * 0.02),
                            ),
                          ),
                          TextButton(
                            onPressed: () async {
                              var url = 'https://www.instagram.com/lenin.sc12/';
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
          ),
          const Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                'Información',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                  fontFamily: 'Montserrat',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              widget.article.description,
              style: TextStyle(
                fontSize: size.height * 0.02,
                fontFamily: 'Montserrat',
              ),
            ),
          ),
        ],
      ),
    );
  }

  randomNumer() {
    Random random = Random();
    int _randomNumber = random.nextInt(501);
    return _randomNumber.toString();
  }
}
