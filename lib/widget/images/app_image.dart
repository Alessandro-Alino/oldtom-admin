import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class AppImage extends StatelessWidget {
  const AppImage({
    super.key,
    required this.imageURL,
    this.width,
    this.height,
    this.fit = BoxFit.contain,
  });

  final String imageURL;
  final double? width;
  final double? height;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      fit: fit,
      width: width,
      height: height,
      imageUrl: imageURL,
      placeholder: (context, url) => Center(
        child: SizedBox.square(
          dimension: 30.0,
          child: const CircularProgressIndicator.adaptive(),
        ),
      ),
      errorWidget: (context, url, error) => Center(
        child: IconButton(
          onPressed: () {
            log('Error image: $error\nURL: $url');
          },
          icon: Icon(Icons.error),
        ),
      ),
    );
  }
}
