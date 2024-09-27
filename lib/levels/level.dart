import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame_tiled/flame_tiled.dart';
import 'package:pixel_adventure/actors/player.dart';

class Level extends World {
  late TiledComponent level;

  @override
  FutureOr<void> onLoad() async {
    level = await TiledComponent.load('Level-01.tmx', Vector2.all(16));

    add(level);

    final spawnPointsLayer = level.tileMap.getLayer<ObjectGroup>('Spawnpoints');
    for(final spawnPoint in spawnPointsLayer!.objects){
      switch (spawnPoint.class_) {
        case 'Player':
          // final player = Player
          break;
        default:
      }
    }

    add(Player(character: 'Mask Dude'));

    return super.onLoad();
  }
}
