import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({
    Key? key,
  }) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
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
          children: [
            Center(
                child: SizedBox(
                    height: size.height * 0.15,
                    width: size.width * 0.6,
                    child: Image.asset('assets/logo.jpeg'))),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'En LeninStore ofrecemos los mejores productos con mejor calidad del mercado. La estética y la calidad de nuestros productos se ven reflejadas en la durabilidad y demanda de los mismos resprecto a nuestros clientes. Con nuestros técnicos de IT y marketing especializados con los que sentirás la seguridad de comprar.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0, top: 15),
              child: Text(
                'CEO / FUNDADORA',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Jhael Castillo Estrada',
                style: TextStyle(fontFamily: 'Montserrat', fontSize: 16),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0, top: 15),
              child: Text(
                'IT y Marketing',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Josué Martínez Dueñas',
                style: TextStyle(fontFamily: 'Montserrat', fontSize: 16),
              ),
            ),
          ],
        ));
  }
}
