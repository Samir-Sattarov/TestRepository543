import 'package:first_application_543/core/entities/photo_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PhotoCardWidget extends StatelessWidget {
  final PhotoEntity entity;
  const PhotoCardWidget({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1.sw,
      child: Column(
        children: [
          SizedBox(
            height: 100.h,
            child: Image.network(entity.thumbnailUrl),
          ),
          SizedBox(
            height: 50.h,
            child: Image.network(entity.imageUrl),
          ),
          SizedBox(height: 10.h),
          Text(entity.title),
        ],
      ),
    );
  }
}
