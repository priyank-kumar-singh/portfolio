/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/facebook.png
  AssetGenImage get facebook =>
      const AssetGenImage('assets/icons/facebook.png');

  /// File path: assets/icons/github.png
  AssetGenImage get github => const AssetGenImage('assets/icons/github.png');

  /// File path: assets/icons/instagram.png
  AssetGenImage get instagram =>
      const AssetGenImage('assets/icons/instagram.png');

  /// File path: assets/icons/linkedin.png
  AssetGenImage get linkedin =>
      const AssetGenImage('assets/icons/linkedin.png');

  /// File path: assets/icons/medium.png
  AssetGenImage get medium => const AssetGenImage('assets/icons/medium.png');

  /// File path: assets/icons/twitter.png
  AssetGenImage get twitter => const AssetGenImage('assets/icons/twitter.png');

  /// File path: assets/icons/youtube.png
  AssetGenImage get youtube => const AssetGenImage('assets/icons/youtube.png');
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  $AssetsImagesArticleGen get article => const $AssetsImagesArticleGen();

  /// File path: assets/images/background_geometric.jpg
  AssetGenImage get backgroundGeometric =>
      const AssetGenImage('assets/images/background_geometric.jpg');

  /// File path: assets/images/mouse.png
  AssetGenImage get mouse => const AssetGenImage('assets/images/mouse.png');

  /// File path: assets/images/profile.png
  AssetGenImage get profile => const AssetGenImage('assets/images/profile.png');

  $AssetsImagesProjectsGen get projects => const $AssetsImagesProjectsGen();
}

class $AssetsImagesArticleGen {
  const $AssetsImagesArticleGen();

  /// File path: assets/images/article/feedback_form.png
  AssetGenImage get feedbackForm =>
      const AssetGenImage('assets/images/article/feedback_form.png');

  /// File path: assets/images/article/theme.png
  AssetGenImage get theme =>
      const AssetGenImage('assets/images/article/theme.png');
}

class $AssetsImagesProjectsGen {
  const $AssetsImagesProjectsGen();

  /// File path: assets/images/projects/authenticator.png
  AssetGenImage get authenticator =>
      const AssetGenImage('assets/images/projects/authenticator.png');

  /// File path: assets/images/projects/flash_chat.png
  AssetGenImage get flashChat =>
      const AssetGenImage('assets/images/projects/flash_chat.png');

  /// File path: assets/images/projects/healthsy.png
  AssetGenImage get healthsy =>
      const AssetGenImage('assets/images/projects/healthsy.png');

  /// File path: assets/images/projects/paryavaran.png
  AssetGenImage get paryavaran =>
      const AssetGenImage('assets/images/projects/paryavaran.png');

  /// File path: assets/images/projects/slide_puzzle.png
  AssetGenImage get slidePuzzle =>
      const AssetGenImage('assets/images/projects/slide_puzzle.png');

  /// File path: assets/images/projects/smart_parking.png
  AssetGenImage get smartParking =>
      const AssetGenImage('assets/images/projects/smart_parking.png');
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage extends AssetImage {
  const AssetGenImage(String assetName) : super(assetName);

  Image image({
    Key? key,
    ImageFrameBuilder? frameBuilder,
    ImageLoadingBuilder? loadingBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? width,
    double? height,
    Color? color,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
  }) {
    return Image(
      key: key,
      image: this,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      filterQuality: filterQuality,
    );
  }

  String get path => assetName;
}
