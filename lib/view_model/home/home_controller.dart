import 'dart:convert';
import 'package:get/get.dart';
import 'package:netflix/constants/endpoints/api_endpoints.dart';
import 'package:netflix/models/home/home_model.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController{
  RxList<HomeModel> releasePastList = <HomeModel>[].obs;
  RxList<HomeModel> trendingNowList = <HomeModel>[].obs;
  RxList<HomeModel> topTenShowList = <HomeModel>[].obs;
  RxList<HomeModel> tenseDramaList = <HomeModel>[].obs;
  RxList<HomeModel> southIndianList = <HomeModel>[].obs;
  @override
  void onInit() {
    initializeReleasePastList();
    initializeTrendingNow();
    initializeTopTenShowList();
    initializeTenseDramas();
    initializeSouthIndian();
    super.onInit();
  }

  Future<void> initializeReleasePastList() async {
    releasePastList.value = await findReleasedPast();
  }

  Future<void> initializeTrendingNow() async {
    trendingNowList.value = await findtrendingNow();
  }

  Future<void> initializeTopTenShowList() async {
    topTenShowList.value = await top10TVShows();
  }

  Future<void> initializeTenseDramas() async {
    tenseDramaList.value = await tenseDramas();
  }

  Future<void> initializeSouthIndian() async {
    southIndianList.value = await southIndian();
  }


  // release
  Future<List<HomeModel>> findReleasedPast() async {
    final response = await http.get(
      Uri.parse(ApiEndPoints.pastYearMovies),
    );
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      return decodedData
          .map(
            (movieData) =>
                HomeModel.fromJson(movieData),
          )
          .toList();
    } else {
      throw Exception("Something Wrong");
    }
  }

  // trending
  Future<List<HomeModel>> findtrendingNow() async {
    final response = await http.get(
      Uri.parse(ApiEndPoints.trendingNow),
    );
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      return decodedData
          .map(
            (movieData) =>
                HomeModel.fromJson(movieData),
          )
          .toList();
    } else {
      throw Exception("Something Wrong");
    }
  }

  //top10
  Future<List<HomeModel>> top10TVShows() async {
    final response = await http.get(
      Uri.parse(ApiEndPoints.topTvShows),
    );
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      return decodedData
          .map(
            (movieData) =>
                HomeModel.fromJson(movieData),
          )
          .toList();
    } else {
      throw Exception("Something Wrong");
    }
  }

  //tense dramas
   Future<List<HomeModel>> tenseDramas() async {
    final response = await http.get(
      Uri.parse(ApiEndPoints.tenseDramas),
    );
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      return decodedData
          .map(
            (movieData) =>
                HomeModel.fromJson(movieData),
          )
          .toList();
    } else {
      throw Exception("Something Wrong");
    }
  }
  // south indian
   Future<List<HomeModel>> southIndian() async{
    final response = await http.get(
      Uri.parse(ApiEndPoints.malayalamMovies),
    );
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      return decodedData
          .map(
            (movieData) =>
                HomeModel.fromJson(movieData),
          )
          .toList();
    } else {
      throw Exception("Something Wrong");
    }
   }
}