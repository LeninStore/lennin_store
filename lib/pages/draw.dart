import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Drawer(
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset('assets/logo.jpeg')),
              const Divider(
                color: Colors.transparent,
              ),
              const Spacer(),
              ListTile(
                  leading: const Icon(
                    Icons.home,
                    color: Colors.black,
                  ),
                  title: Text('Home',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: size.height * 0.020,
                          fontWeight: FontWeight.bold)),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushReplacementNamed(context, 'home');
                  }),
              ListTile(
                  leading: const Icon(
                    Icons.sell,
                    color: Colors.black,
                  ),
                  title: Text('Todos los productos',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: size.height * 0.020,
                          fontWeight: FontWeight.bold)),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, 'allProducts');
                  }),
              ListTile(
                leading: const Icon(Icons.info, color: Colors.black),
                title: Text('Sobre nosotros',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: size.height * 0.020,
                        fontWeight: FontWeight.bold)),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, 'aboutUs');
                },
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
