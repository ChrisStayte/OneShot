import 'package:flutter/material.dart';

class WikiMainCategoryCard extends StatelessWidget {
  const WikiMainCategoryCard(
      {super.key,
      required this.assetPath,
      required this.name,
      required this.imageBoxFit,
      required this.imageRepeat,
      required this.navigation});

  final String assetPath;
  final String name;
  final Function navigation;
  final BoxFit imageBoxFit;
  final ImageRepeat imageRepeat;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => navigation(),
        child: Container(
          height: 250,
          margin: EdgeInsets.all(10),
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(
              25,
            ),
          ),
          child: Stack(children: [
            Positioned.fill(
              child: Image.asset(
                assetPath,
                fit: imageBoxFit,
                repeat: imageRepeat,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: [0, 0.5],
                  colors: [
                    Colors.black,
                    Colors.transparent,
                  ],
                ),
              ),
            ),
            Positioned(
              child: Text(
                name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              bottom: 15,
              right: 15,
            )
          ]),
        ),
      ),
    );
  }
}
