import 'dart:convert';
import 'package:get/get.dart';
import 'package:netflix/constants/endpoints/api_endpoints.dart';
import 'package:netflix/models/new_and_hot/coming_soon_model.dart';
import 'package:netflix/models/new_and_hot/everyones_watching_model.dart';
import 'package:http/http.dart' as http;

class NewAndHotController extends GetxController{
  RxList<ComingSoonModel> comingSoonList = <ComingSoonModel>[].obs;
  RxList<EveryOnesWatchingModel> everyOnesWatchingList = <EveryOnesWatchingModel>[].obs;

  @override
  void onInit() {
    initializeComingSoonList();
    initializeEveryOnesList();
    super.onInit();
  }

  Future<void> initializeComingSoonList() async {
    comingSoonList.value = await getComingSoon(); // Initialize downloadsList with the downloaded data
  }

  Future<void> initializeEveryOnesList() async {
    everyOnesWatchingList.value = await getEveryOnesWatching(); // Initialize downloadsList with the downloaded data
  }

  Future<List<ComingSoonModel>> getComingSoon() async {
    final response = await http.get(
      Uri.parse(ApiEndPoints.upcomingMovies),
    );
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      return decodedData
          .map(
            (data) =>
                ComingSoonModel.fromJson(data),
          )
          .toList();
    } else {
      throw Exception("Something Wrong");
    }
  }

  Future<List<EveryOnesWatchingModel>> getEveryOnesWatching() async {
    final response = await http.get(
      Uri.parse(ApiEndPoints.nowPlaying),
    );
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      return decodedData
          .map(
            (data) =>
                EveryOnesWatchingModel.fromJson(data),
          )
          .toList();
    } else {
      throw Exception("Something Wrong");
    }
  }
}