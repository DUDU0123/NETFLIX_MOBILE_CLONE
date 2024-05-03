import 'dart:convert';
import 'dart:developer';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:netflix/constants/endpoints/api_endpoints.dart';
import 'package:netflix/models/downloads/downloads_model.dart';
class DownloadsApiController extends GetxController {
  RxList<DownloadsModel> downloadsList = <DownloadsModel>[].obs;

  @override
  void onInit() {
    initializeDownloadsList(); // Call the method to initialize downloadsList
    super.onInit();
  }

  Future<void> initializeDownloadsList() async {
    downloadsList.value = await getDownloadsPoster(); // Initialize downloadsList with the downloaded data
  }

  Future<List<DownloadsModel>> getDownloadsPoster() async {
    final response = await http.get(
      Uri.parse(ApiEndPoints.downloads),
    );
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      return decodedData
          .map(
            (downloadPosterContainMap) =>
                DownloadsModel.fromJson(downloadPosterContainMap),
          )
          .toList();
    } else {
      throw Exception("Something Wrong");
    }
  }
}
