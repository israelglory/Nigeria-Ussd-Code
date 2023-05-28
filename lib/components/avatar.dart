import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    Key? key,
    required this.url,
    required this.height,
    required this.width,
  }) : super(key: key);

  const Avatar.small({
    Key? key,
    required this.url,
  })  : height = 32,
        width = 32,
        super(key: key);

  const Avatar.medium({
    Key? key,
    required this.url,
  })  : height = 44,
        width = 44,
        super(key: key);

  const Avatar.large({
    Key? key,
    required this.url,
  })  : height = 60,
        width = 60,
        super(key: key);
  const Avatar.largest({
    Key? key,
    required this.url,
  })  : height = 90,
        width = 90,
        super(key: key);

  final double height;
  final double width;
  final String url;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: SizedBox(
          height: height,
          width: width,
          child: url.startsWith("http") || url.startsWith("https")
              ? CachedNetworkImage(
                  imageUrl: url,
                  fit: BoxFit.cover,
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) {
                    return Image.asset('assets/images/banks.jpeg');
                  },
                )
              : Image.asset(url)),
    );
  }
}
