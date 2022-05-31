import 'package:flutter/material.dart';

class MyCardd extends StatelessWidget {
  const MyCardd({
    Key? key,
    required this.title,
    required this.description,
    required this.imgpath,
    required this.price,
    // required this.ontap,
  }) : super(key: key);

  final String title;
  final String description;
  final String imgpath;
  final String price;
  // late Function ontap;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Ink(
        height: size.height * 0.253,
        width: size.width * 0.38,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: SizedBox(
                    height: size.height * 0.16,
                    width: size.width * 0.29,
                    //color: Colors.amber,
                    child: SizedBox.expand(
                      child: FittedBox(
                        fit: BoxFit.cover,
                        child: SizedBox(
                          child: Image.asset(
                            imgpath.toString(),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 5),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  title,
                  maxLines: 2,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Montserrat',
                    fontSize: size.height * 0.017,
                    //fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 9.0,
                right: 9.0,
              ),
              child: Text(
                '\$' + price,
                maxLines: 3,
                style: TextStyle(
                    color: Colors.black54,
                    fontFamily: 'Montserrat',
                    overflow: TextOverflow.ellipsis,
                    fontSize: size.height * 0.017,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
