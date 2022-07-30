import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oneshot/enums/platform.dart';

class PlatformButton extends StatelessWidget {
  const PlatformButton(
      {Key? key,
      required Platform selectedPlatform,
      required Platform givenPlatform,
      required Function selectThisPlatform})
      : _selectedPlatform = selectedPlatform,
        _givenPlatform = givenPlatform,
        _selectThisPlatform = selectThisPlatform,
        super(key: key);

  final Platform _selectedPlatform;
  final Platform _givenPlatform;
  final Function _selectThisPlatform;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => _selectThisPlatform(),
        child: Container(
          alignment: Alignment.center,
          height: 40,
          margin: EdgeInsets.symmetric(
            horizontal: 5,
          ),
          padding: EdgeInsets.all(
            5,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: _selectedPlatform == _givenPlatform
                ? _givenPlatform.platformColor
                : Colors.grey.shade400,
          ),
          child: SvgPicture.asset(
            'assets/images/platform/${_givenPlatform.name.toLowerCase()}.svg',
            color: Colors.white,
            height: 22,
          ),
        ),
      ),
    );
  }
}
