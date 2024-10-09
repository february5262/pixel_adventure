import 'dart:async';

import 'package:flame/components.dart';
import 'package:pixel_adventure/pixel_adventure.dart';

class Saw extends SpriteAnimationComponent with HasGameRef<PixelAdventure> {
  final bool isVertical;
  final double offNeg;
  final double offPos;

  Saw(
      {this.isVertical = false,
      this.offNeg = 0.0,
      this.offPos = 0.0,
      position,
      size})
      : super(position: position, size: size);

  static const double sawSpeed = 0.03;
  static const moveSpeed = 50;
  static const tilesize = 16;
  double moveDirection = 1;
  double rangeNeg = 0;
  double rangePos = 0;

  @override
  FutureOr<void> onLoad() {
    priority = -1;

    if (isVertical) {
      rangeNeg = position.y - offNeg * tilesize;
      rangeNeg = position.y + offNeg * tilesize;
    }
    animation = SpriteAnimation.fromFrameData(
        game.images.fromCache('Traps/Saw/On (38x38).png'),
        SpriteAnimationData.sequenced(
            amount: 8, stepTime: sawSpeed, textureSize: Vector2.all(38)));
    return super.onLoad();
  }
}
