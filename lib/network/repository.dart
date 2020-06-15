import 'package:covid19app/models/rp_global.dart';
import 'package:covid19app/models/rp_latest.dart';
import 'package:covid19app/models/rp_news.dart';
import 'package:covid19app/models/rp_user_country.dart';
import 'package:covid19app/network/api_provider.dart';

class Repository {
  var apiProvider = ApiProvider();

  Future<RpLatest> getGloballyLatestData() => apiProvider.getGloballyLatestData();
  Future<List<Country>> getAllCountriesData() => apiProvider.getAllCountriesData();
  Future<Country> getUserCountryData(String countryCode) => apiProvider.getUserCountryData(countryCode);
  Future<RpNews> getNewses() => apiProvider.getNewses();
}
