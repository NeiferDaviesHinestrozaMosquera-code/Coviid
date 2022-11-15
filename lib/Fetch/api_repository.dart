import 'package:coviidapp/Models/covid_models.dart';
import 'package:coviidapp/Providers/api_provider.dart';


class ApiRepository {
  final _provider = ApiProvider();

  Future<CovidModel> fetchCovidList() {
    return _provider.fetchCovidList();
  }
}

class NetworkError extends Error {}