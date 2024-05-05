import 'package:flutter/material.dart';
import 'package:flutter_path/views/level_map.dart';
import 'package:flutter_path/views/levels.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/shared.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                hoverColor: transparent,
                splashColor: transparent,
                highlightColor: transparent,
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const Levels())),
                child: Container(
                  decoration: BoxDecoration(color: dark, borderRadius: BorderRadius.circular(15)),
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const FlutterLogo(size: 60),
                      const SizedBox(height: 10),
                      Text("Flutter & Dart", style: GoogleFonts.itim(fontSize: 25, fontWeight: FontWeight.w500, color: white)),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              InkWell(
                hoverColor: transparent,
                splashColor: transparent,
                highlightColor: transparent,
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => GameLevelMap(
                      levelWidgets: <Widget>[
                        for (int index = 0; index < 100; index += 1) const CircleAvatar(radius: 10),
                      ],
                      color: white,
                      stroke: 1.5,
                      spaceCurve: 100,
                    ),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(color: dark, borderRadius: BorderRadius.circular(15)),
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const FlutterLogo(size: 60),
                      const SizedBox(height: 10),
                      Text("Flutter Examples", style: GoogleFonts.itim(fontSize: 25, fontWeight: FontWeight.w500, color: white)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
