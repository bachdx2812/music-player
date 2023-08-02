import "package:get/get.dart";

import "../models/song_model.dart";
import "../repositories/song_repository.dart";

class SongsController extends GetxController {
  var trendingSongsList = <Song>[].obs;
  var trendingSongsListLoading = true.obs;

  fetchSongs() async {
    trendingSongsListLoading.value = true;

    List<Song> returnData = [];

    var query = {'q': 'suni ha linh'};

    var result = await SongRepository.fetchList(query);

    if (result != null) {
      for (Map<String, dynamic> song in result.take(5)) {
        returnData.add(Song.fromJson(song));
      }
    }

    trendingSongsList.value = returnData;
    trendingSongsListLoading.value = false;
  }
}
