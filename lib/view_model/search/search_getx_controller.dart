import 'dart:convert';
import 'package:get/get.dart';
import 'package:netflix/constants/api/api_key.dart';
import 'package:netflix/constants/base_urls/base_urls.dart';
import 'package:netflix/constants/endpoints/api_endpoints.dart';
import 'package:netflix/models/search/search_model.dart';
import 'package:http/http.dart' as http;

class SearchGetxController extends GetxController {
  RxBool isUserClicked = false.obs;
  RxList<SearchModel> topSearchList = <SearchModel>[].obs;
  RxList<SearchModel> searchedMovieList = <SearchModel>[].obs;
  RxString val = ''.obs;
  @override
  void onInit() {
    initializeTopSearchList();
    super.onInit();
  }

  Future<void> initializeTopSearchList() async {
    topSearchList.value = await getTopSearches();
  }

  //Top search movies
  Future<List<SearchModel>> getTopSearches() async {
    final response = await http.get(
      Uri.parse(ApiEndPoints.topRated),
    );
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      return decodedData
          .map(
            (data) => SearchModel.fromJson(data),
          )
          .toList();
    } else {
      throw Exception("Something Wrong");
    }
  }

  // Fetch movies
  Future<void> fetchSearchedMovie(String query) async {
    final response = await http
        .get(Uri.parse('$kBaseUrl/search/movie?query=$query&api_key=$apiKey'));
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      searchedMovieList.value =
            decodedData.map((data) => SearchModel.fromJson(data)).toList();
      // if (decodedData != null) {
        
      // } else {
      //   throw Exception('No data received from the server');
      // }
    } else {
      throw Exception("Something wrong");
    }
  }
}
