import 'package:flutter/material.dart';

class MakananImage extends StatelessWidget {
  const MakananImage({
    super.key,
    required this.imageUrl,
    required this.width,
    required this.height,
    this.borderRadius = 0,
    this.iconSize = 36,
  });

  final String imageUrl;
  final double width;
  final double height;
  final double borderRadius;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Image.network(
        imageUrl,
        width: width,
        height: height,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) => Container(
          width: width,
          height: height,
          color: Colors.grey.shade200,
          child: Icon(Icons.image, color: Colors.grey, size: iconSize),
        ),
      ),
    );
  }
}
