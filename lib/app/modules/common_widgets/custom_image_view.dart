import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';


extension ImageTypeExtension on String {
  ImageType get imageType {
    final lower = toLowerCase();
    if (startsWith('http://') || startsWith('https://')) {
      return ImageType.network;
    } else if (endsWith('.svg')) {
      return ImageType.svg;
    } else if (startsWith('file://') || File(this).existsSync()) {
      return ImageType.file;
    } else if (endsWith('.json')) {
      return ImageType.lottie;
    } else if (lower.endsWith('.png') ||
        lower.endsWith('.jpg') ||
        lower.endsWith('.jpeg') ||
        lower.endsWith('.webp')) {
      return ImageType.png;
    }
    return ImageType.unknown;
  }
}

enum ImageType { svg, png, network, file, lottie, unknown }

class CustomImageView extends StatelessWidget {
  const CustomImageView({
    super.key,
    this.imagePath,
    this.height,
    this.width,
    this.color,
    this.fit,
    this.placeHolder = '',
    this.alignment,
    this.onTap,
    this.margin,
    this.radius,
    this.border,
  });

  final String? imagePath;
  final double? height;
  final double? width;
  final Color? color;
  final BoxFit? fit;
  final String placeHolder;
  final Alignment? alignment;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry? margin;
  final BorderRadius? radius;
  final BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
      alignment: alignment!,
      child: _buildWidget(),
    )
        : _buildWidget();
  }

  Widget _buildWidget() {
    return Padding(
      key: key,
      padding: margin ?? EdgeInsets.zero,
      child: InkWell(
        onTap: onTap,
        child: _buildCircleImage(),
      ),
    );
  }

  _buildCircleImage() {
    if (radius != null) {
      return ClipRRect(
        borderRadius: radius ?? BorderRadius.zero,
        child: _buildImageWithBorder(),
      );
    } else {
      return _buildImageWithBorder();
    }
  }

  _buildImageWithBorder() {
    if (border != null) {
      return Container(
        decoration: BoxDecoration(
          border: border,
          borderRadius: radius,
        ),
        child: _buildImageView(),
      );
    } else {
      return _buildImageView();
    }
  }

  Widget _buildImageView() {
    if (imagePath != null) {
      switch (imagePath!.imageType) {
        case ImageType.svg:
          return SizedBox(
            key: key,
            height: height,
            width: width,
            child: SvgPicture.asset(
              imagePath!,
              height: height,
              width: width,
              fit: fit ?? BoxFit.contain,
              colorFilter: color != null
                  ? ColorFilter.mode(
                  color ?? Colors.transparent, BlendMode.srcIn)
                  : null,
            ),
          );
        case ImageType.file:
          return Image.file(
            File(imagePath!),
            height: height,
            width: width,
            fit: fit ?? BoxFit.cover,
            color: color,
          );
        case ImageType.network:
          return CachedNetworkImage(
            height: height,
            width: width,
            fit: fit,
            imageUrl: imagePath!,
            color: color,
            placeholder: (context, url) => SizedBox(
              height: 30.h,
              width: 30.w,
              child: LinearProgressIndicator(
                color: Colors.grey.shade200,
                backgroundColor: Colors.grey.shade100,
              ),
            ),
            errorWidget: (context, url, error) => Container(
                color: Colors.white,
                child: Image.asset("assets/images/placeholder_image.png",
                    fit: BoxFit.cover)),
          );
        case ImageType.lottie:
          return Lottie.asset(
            imagePath!,
            height: height,
            width: width,
            fit: fit ?? BoxFit.cover,
            repeat: false,
            animate: true,
          );
        case ImageType.png:
        default:
          return Image.asset(
            imagePath!,
            height: height,
            width: width,
            fit: fit ?? BoxFit.cover,
            color: color,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                  color: Colors.white,
                  child: Image.asset("assets/images/placeholder_image.png",
                      fit: BoxFit.cover));
            },
          );
      }
    }
    return const SizedBox();
  }
}