
///
/// Enumクラス
///

enum Sport {
  /// サッカー
  football,
  /// 野球
  baseball,
  /// バスケット
  basketball,
  /// バレーボール
  volleyball,
  /// その他
  other,
}

extension SportCategory on Sport {

  String get famousLeague {
    switch (this) {
      case Sport.football:
        return 'プレミアリーグ';
      case Sport.baseball:
        return 'メジャーリーグ';
      case Sport.basketball:
        return 'ナショナル・バスケットボール・アソシエーション';
      case Sport.volleyball:
        return 'セリエA';
      case Sport.other:
        return 'その他のスポーツリーグ';
    }
  }

  int get value {
    switch (this) {
      case Sport.football:
        return 1;
      case Sport.baseball:
        return 2;
      case Sport.basketball:
        return 3;
      case Sport.volleyball:
        return 4;
      case Sport.other:
        return 5;
    }
  }

}

class SportCategoryConverter {
  ///intからSportのリーグ名の取得
  String getSportStr(int value) {
    if (value == 0) {
      return '';
    }
    return Sport.values
        .firstWhere(
          (element) => element.value == value,
    )
        .famousLeague;
  }

  ///StringからSportのリーグ名のvalueを取得
  int getSportValue(String str) {
    if (str.isEmpty) {
      return 0;
    }
    return Sport.values
        .firstWhere(
          (element) => element.famousLeague == str,
    )
        .value;
  }
}
