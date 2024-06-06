enum TaiwanCity {
  taipeiCity,  // 臺北市
  newTaipeiCity,  // 新北市
  taoyuanCity,  // 桃園市
  taichungCity,  // 臺中市
  tainanCity,  // 臺南市
  kaohsiungCity,  // 高雄市
  keelungCity,  // 基隆市
  hsinchuCity,  // 新竹市
  hsinchuCounty,  // 新竹縣
  miaoliCounty,  // 苗栗縣
  changhuaCounty,  // 彰化縣
  nantouCounty,  // 南投縣
  yunlinCounty,  // 雲林縣
  chiayiCity,  // 嘉義市
  chiayiCounty,  // 嘉義縣
  pingtungCounty,  // 屏東縣
  yilanCounty,  // 宜蘭縣
  hualienCounty,  // 花蓮縣
  taitungCounty,  // 臺東縣
  penghuCounty,  // 澎湖縣
  kinmenCounty,  // 金門縣
  lienchiangCounty  // 連江縣
}

extension TaiwanCityExtension on TaiwanCity {
  String get displayName {
    switch (this) {
      case TaiwanCity.taipeiCity:
        return '臺北市';
      case TaiwanCity.newTaipeiCity:
        return '新北市';
      case TaiwanCity.taoyuanCity:
        return '桃園市';
      case TaiwanCity.taichungCity:
        return '臺中市';
      case TaiwanCity.tainanCity:
        return '臺南市';
      case TaiwanCity.kaohsiungCity:
        return '高雄市';
      case TaiwanCity.keelungCity:
        return '基隆市';
      case TaiwanCity.hsinchuCity:
        return '新竹市';
      case TaiwanCity.hsinchuCounty:
        return '新竹縣';
      case TaiwanCity.miaoliCounty:
        return '苗栗縣';
      case TaiwanCity.changhuaCounty:
        return '彰化縣';
      case TaiwanCity.nantouCounty:
        return '南投縣';
      case TaiwanCity.yunlinCounty:
        return '雲林縣';
      case TaiwanCity.chiayiCity:
        return '嘉義市';
      case TaiwanCity.chiayiCounty:
        return '嘉義縣';
      case TaiwanCity.pingtungCounty:
        return '屏東縣';
      case TaiwanCity.yilanCounty:
        return '宜蘭縣';
      case TaiwanCity.hualienCounty:
        return '花蓮縣';
      case TaiwanCity.taitungCounty:
        return '臺東縣';
      case TaiwanCity.penghuCounty:
        return '澎湖縣';
      case TaiwanCity.kinmenCounty:
        return '金門縣';
      case TaiwanCity.lienchiangCounty:
        return '連江縣';
      default:
        return '';
    }
  }

  String get imgPath {
    return 'assets/images/${this.name}.jpeg';
  }
}
