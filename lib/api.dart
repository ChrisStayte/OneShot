import 'package:flutter/material.dart';

class API {
  _ApexLegendsAPIDotCom ApexLegendsAPIDotCom = _ApexLegendsAPIDotCom();
}

class _ApexLegendsAPIDotCom {
  static const String key = "e96ee17d9b28ce51f0f90fb15ce4ce89";

  static const String urlBase = "https://api.mozambiquehe.re/";
  static const String urlCrafting = '${urlBase}crafting?auth=$key';
}
