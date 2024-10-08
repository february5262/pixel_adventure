import 'package:flame/components.dart';

class CollisionBlock extends PositionComponent {
  bool isPlatform;
  CollisionBlock({
    position,
    size,
    this.isPlatform = false,
  }) : super(
            //super alloweds to pass data to PosisitonComponent
            position: position,
            size: size) {
    // debugMode = true;
  } // put data from CollisionBlock to PositionComponent
}
