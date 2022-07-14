import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:oneshot/models/legend.dart';

class LegendScreen extends StatelessWidget {
  const LegendScreen({super.key, required this.legend});

  final Legend legend;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(legend.name),
      ),
      body: Text(
        legend.tagline,
      ),
    );
  }
}
