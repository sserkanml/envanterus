import 'package:flutter/widgets.dart';

extension AssetPath on BuildContext {
  String getPath({required AssetType type,required String file}) {
    switch (type) {
      case AssetType.image:
        return "assets/images/$file";

      case AssetType.svg:
        return "assets/svg/$file";

      case AssetType.video:
        return "assets/videos/$file";

      case AssetType.animation:
        return "assets/animations/$file";
    }
  }
}

enum AssetType { image, svg, video, animation }
