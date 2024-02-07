import 'package:bookland_admin_panel_web/constants/response_object.dart';
import 'package:bookland_admin_panel_web/constants/urls.dart';
import 'package:logger/logger.dart';
import 'package:http/http.dart' as http;

class PublisherService {
  Future<ResponseObject?> getAllPublishersData() async {
    try {
      var url = Uri.parse("$BASE_URL/$GET_ALL_PUBLISHERS");
      var response = await http.get(url);
      Logger().i('Publisher Response body: ${response.body}');
      return ResponseObject.fromJson(response.body);
    } catch (e) {
      Logger().e(e.toString());
      return null;
    }
  }
}
