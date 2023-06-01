import 'dart:convert';
import 'package:departure_app/helper/theme_pref.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeProvider extends ChangeNotifier {
  List gitadata = [];
  int currentIndex = 0;

  Future<void> loanData() async {
    String jsonData = await rootBundle.loadString('gita_file/gita.json');
    gitadata = json.decode(jsonData);
    notifyListeners();
  }

  changeCurrentPageIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  List<List> gitaimages = [
    [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTILk71-ZEnqKbtI1ohc1eUbjlBWCDjlxVJxw&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4ljZY-OZXNts8zG1_ZMifcRo7xp5YUmS_SA&usqp=CAU",
      "https://cdn.slidesharecdn.com/ss_thumbnails/bg0100chapter01-170421173406-thumbnail.jpg?width=640&height=640&fit=bounds"
    ],
    [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAfMtbm8LfASFT14iec20frqi__16Belw3Nw&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjYKr28bi5icmFrjxuTcK7egRvrP5fz1MGptLIc59Q-8kTWpL7VfvPfkSapXE8ESxH7hE&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQ_6kDOY6P61e5uhFvOx6CmePpzmav9b8ecnod7adilE0ZFegVJLHpcFq-fRu91XqZuiU&usqp=CAU",
    ],
    [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3ojBPq2DUswYP6oII5KBkmOGtiaJVPSUKMA&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8vv5uIheHSrWGKD2gxs3jwsZdsWX8Roapqg&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3AcSUYTYf6Ncb1_g7TxVrmlEXrP7Q7tDpfIMrBM0kRw_XM_KMxmBufbOZbUvAnn-DBf4&usqp=CAU",
    ],
    [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTILk71-ZEnqKbtI1ohc1eUbjlBWCDjlxVJxw&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4ljZY-OZXNts8zG1_ZMifcRo7xp5YUmS_SA&usqp=CAU",
      "https://cdn.slidesharecdn.com/ss_thumbnails/bg0100chapter01-170421173406-thumbnail.jpg?width=640&height=640&fit=bounds"
    ],
    [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAfMtbm8LfASFT14iec20frqi__16Belw3Nw&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjYKr28bi5icmFrjxuTcK7egRvrP5fz1MGptLIc59Q-8kTWpL7VfvPfkSapXE8ESxH7hE&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQ_6kDOY6P61e5uhFvOx6CmePpzmav9b8ecnod7adilE0ZFegVJLHpcFq-fRu91XqZuiU&usqp=CAU",
    ],
    [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3ojBPq2DUswYP6oII5KBkmOGtiaJVPSUKMA&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8vv5uIheHSrWGKD2gxs3jwsZdsWX8Roapqg&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3AcSUYTYf6Ncb1_g7TxVrmlEXrP7Q7tDpfIMrBM0kRw_XM_KMxmBufbOZbUvAnn-DBf4&usqp=CAU",
    ],
    [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTILk71-ZEnqKbtI1ohc1eUbjlBWCDjlxVJxw&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4ljZY-OZXNts8zG1_ZMifcRo7xp5YUmS_SA&usqp=CAU",
      "https://cdn.slidesharecdn.com/ss_thumbnails/bg0100chapter01-170421173406-thumbnail.jpg?width=640&height=640&fit=bounds"
    ],
    [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAfMtbm8LfASFT14iec20frqi__16Belw3Nw&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjYKr28bi5icmFrjxuTcK7egRvrP5fz1MGptLIc59Q-8kTWpL7VfvPfkSapXE8ESxH7hE&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQ_6kDOY6P61e5uhFvOx6CmePpzmav9b8ecnod7adilE0ZFegVJLHpcFq-fRu91XqZuiU&usqp=CAU",
    ],
    [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3ojBPq2DUswYP6oII5KBkmOGtiaJVPSUKMA&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8vv5uIheHSrWGKD2gxs3jwsZdsWX8Roapqg&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3AcSUYTYf6Ncb1_g7TxVrmlEXrP7Q7tDpfIMrBM0kRw_XM_KMxmBufbOZbUvAnn-DBf4&usqp=CAU",
    ],
    [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTILk71-ZEnqKbtI1ohc1eUbjlBWCDjlxVJxw&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4ljZY-OZXNts8zG1_ZMifcRo7xp5YUmS_SA&usqp=CAU",
      "https://cdn.slidesharecdn.com/ss_thumbnails/bg0100chapter01-170421173406-thumbnail.jpg?width=640&height=640&fit=bounds"
    ],
    [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAfMtbm8LfASFT14iec20frqi__16Belw3Nw&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjYKr28bi5icmFrjxuTcK7egRvrP5fz1MGptLIc59Q-8kTWpL7VfvPfkSapXE8ESxH7hE&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQ_6kDOY6P61e5uhFvOx6CmePpzmav9b8ecnod7adilE0ZFegVJLHpcFq-fRu91XqZuiU&usqp=CAU",
    ],
    [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3ojBPq2DUswYP6oII5KBkmOGtiaJVPSUKMA&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8vv5uIheHSrWGKD2gxs3jwsZdsWX8Roapqg&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3AcSUYTYf6Ncb1_g7TxVrmlEXrP7Q7tDpfIMrBM0kRw_XM_KMxmBufbOZbUvAnn-DBf4&usqp=CAU",
    ],
    [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTILk71-ZEnqKbtI1ohc1eUbjlBWCDjlxVJxw&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4ljZY-OZXNts8zG1_ZMifcRo7xp5YUmS_SA&usqp=CAU",
      "https://cdn.slidesharecdn.com/ss_thumbnails/bg0100chapter01-170421173406-thumbnail.jpg?width=640&height=640&fit=bounds"
    ],
    [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAfMtbm8LfASFT14iec20frqi__16Belw3Nw&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjYKr28bi5icmFrjxuTcK7egRvrP5fz1MGptLIc59Q-8kTWpL7VfvPfkSapXE8ESxH7hE&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQ_6kDOY6P61e5uhFvOx6CmePpzmav9b8ecnod7adilE0ZFegVJLHpcFq-fRu91XqZuiU&usqp=CAU",
    ],
    [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3ojBPq2DUswYP6oII5KBkmOGtiaJVPSUKMA&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8vv5uIheHSrWGKD2gxs3jwsZdsWX8Roapqg&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3AcSUYTYf6Ncb1_g7TxVrmlEXrP7Q7tDpfIMrBM0kRw_XM_KMxmBufbOZbUvAnn-DBf4&usqp=CAU",
    ],
    [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTILk71-ZEnqKbtI1ohc1eUbjlBWCDjlxVJxw&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4ljZY-OZXNts8zG1_ZMifcRo7xp5YUmS_SA&usqp=CAU",
      "https://cdn.slidesharecdn.com/ss_thumbnails/bg0100chapter01-170421173406-thumbnail.jpg?width=640&height=640&fit=bounds"
    ],
    [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAfMtbm8LfASFT14iec20frqi__16Belw3Nw&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjYKr28bi5icmFrjxuTcK7egRvrP5fz1MGptLIc59Q-8kTWpL7VfvPfkSapXE8ESxH7hE&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQ_6kDOY6P61e5uhFvOx6CmePpzmav9b8ecnod7adilE0ZFegVJLHpcFq-fRu91XqZuiU&usqp=CAU",
    ],
    [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3ojBPq2DUswYP6oII5KBkmOGtiaJVPSUKMA&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8vv5uIheHSrWGKD2gxs3jwsZdsWX8Roapqg&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3AcSUYTYf6Ncb1_g7TxVrmlEXrP7Q7tDpfIMrBM0kRw_XM_KMxmBufbOZbUvAnn-DBf4&usqp=CAU",
    ],
  ];

  late bool _isDark;
  late MyThemePreferences _prefs;
  bool get isDark => _isDark;

  HomeProvider () {
    _isDark = false;
    _isSwitched = false;
    _prefs = MyThemePreferences();
    getPreferences();
  }

  set isDark(bool value) {
    _isDark = value;
    _prefs.seTheme(value);
    notifyListeners();
  }
  getPreferences() async {
    _isDark = await _prefs.getTheme();
    _isPlatformChanged = await _prefs.getPlatform();
    notifyListeners();
  }

    late bool _isSwitched;
    bool get isSwitched => _isSwitched;

    set isSwitched(bool value) {
      _isSwitched = value;
      notifyListeners();
    }

    bool _isPlatformChanged = false;
    bool get isPlateformChanged => _isPlatformChanged;

    set isPlateformChanged(bool value) {
      _isPlatformChanged = value;
      _prefs.setPlatform(value);
      notifyListeners();
    }

  }
