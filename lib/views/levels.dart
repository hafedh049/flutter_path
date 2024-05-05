import 'package:flutter/material.dart';
import 'package:flutter_path/utils/shared.dart';
import 'package:level_map/level_map.dart';

class Levels extends StatefulWidget {
  const Levels({super.key});

  @override
  State<Levels> createState() => _LevelsState();
}

class _LevelsState extends State<Levels> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LevelMap(
        levelMapParams: LevelMapParams(
          levelCount: 100,
          currentLevel: 2,
          pathColor: white,
          bgImagesToBePaintedRandomly: <ImageParams>[],
          completedLevelImage: ImageParams(path: "assets/icons/completed.png", size: const Size.fromRadius(30)),
          currentLevelImage: ImageParams(path: "assets/icons/current.png", size: const Size.fromRadius(30)),
          lockedLevelImage: ImageParams(path: "assets/icons/locked.png", size: const Size.fromRadius(30)),
        ),
      ),
    );
  }
}
