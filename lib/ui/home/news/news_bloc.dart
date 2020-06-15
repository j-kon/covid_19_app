
import 'package:covid19app/models/rp_news.dart';
import 'package:covid19app/network/repository.dart';
import 'package:rxdart/rxdart.dart';

final bloc = NewsBloc();

class NewsBloc {
  final _repository = Repository();
  final newsFetcher = BehaviorSubject<RpNews>();

  Stream<RpNews> get newses => newsFetcher.stream;

  getNewses() async {
    RpNews newses = await _repository.getNewses();
    newsFetcher.sink.add(newses);
  }
  dispose() {
    newsFetcher.close();
  }

}