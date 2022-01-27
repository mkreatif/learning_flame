import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flame/widgets.dart';
import 'package:learning_flame/player.dart';

class SpaceShooterGame extends FlameGame with PanDetector {
  late Player player;
  @override
  Future<void>? onLoad() async {
    await super.onLoad();

    final ship = await loadSprite('ship.png');
    player = Player()
      ..sprite = ship
      ..x = size.x / 2
      ..y = size.y / 2
      ..width = 50
      ..height = 100
      ..anchor = Anchor.center;
    add(player);
  }

  @override
  void onPanUpdate(DragUpdateInfo info) {
    player.move(info.delta.game);
  }
}
