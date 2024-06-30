import 'package:flutter/material.dart';

class Workspace {
  final String name;
  final List<Color> colors;

  Workspace({required this.name, required this.colors});
}

final List<Workspace> workspaces = [
  Workspace(name: 'Savva', colors: [const Color.fromRGBO(255,52,99,1), const Color.fromRGBO(250,83,121,1)]),
  Workspace(name: 'Olluco', colors: [const Color.fromRGBO(255,53,156,1), const Color.fromRGBO(254,84,172,1)]),
  Workspace(name: 'Loona', colors: [const Color.fromRGBO(94,76,250,1), const Color.fromRGBO(115,102,250,1)]),
  Workspace(name: 'Folk', colors: [const Color.fromRGBO(0,171,241,1), const Color.fromRGBO(44,183,240,1)]),
  Workspace(name: 'White Rabbit', colors: [const Color.fromRGBO(2,192,203,1), const Color.fromRGBO(47,199,210,1)]),
  Workspace(name: 'Sage', colors: [const Color.fromRGBO(12,204,75,1), const Color.fromRGBO(46,208,105,1)]),
  Workspace(name: 'Maya', colors: [const Color.fromRGBO(242,179,6,1), const Color.fromRGBO(244,190,44,1)]),
  Workspace(name: 'Jun', colors: [const Color.fromRGBO(255,107,3,1), const Color.fromRGBO(252,130,46,1)]),
  Workspace(name: 'Onest', colors: [const Color.fromRGBO(161,83,255,1), const Color.fromRGBO(161,83,255,1)]),
  Workspace(name: 'Probka на Цветном', colors: [const Color.fromRGBO(2,179,254,1), const Color.fromRGBO(40,191,255,1)]),
];
