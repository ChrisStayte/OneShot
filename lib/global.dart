import 'package:flutter/material.dart';
import 'package:oneshot/enums/legends.dart';

class Global {
  static final colors = _Colors();
}

class _Colors {
  Map<Legends, Color> legendColor = {
    Legends.ash: Colors.red,
  };
}
