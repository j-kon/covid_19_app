import 'package:covid19app/models/rp_global.dart';
import 'package:covid19app/network/repository.dart';
import 'package:rxdart/rxdart.dart';

final bloc = GlobalBloc();

class GlobalBloc {
  final _repository = Repository();

  final globalFetcher = BehaviorSubject<List<Country>>();

  Stream<List<Country>> get allAbout => globalFetcher.stream;

  getGlobalData() async {
    List<Country> global = await _repository.getAllCountriesData();
    globalFetcher.sink.add(global);
  }

  dispose() {
    globalFetcher.close();
  }
}
