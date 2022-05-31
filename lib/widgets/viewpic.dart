// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:photo_view/photo_view_gallery.dart';

class ViewPic extends StatelessWidget {
  String img;
  ViewPic({Key? key, required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PhotoViewGallery.builder(
            itemCount: 1,
            builder: (context, index) {
              return PhotoViewGalleryPageOptions(
                  imageProvider: AssetImage(img));
            }));
  }
}
