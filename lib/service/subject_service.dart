import 'package:bookland_admin_panel_web/constants/response_object.dart';
import 'package:bookland_admin_panel_web/constants/urls.dart';
import 'package:logger/logger.dart';
import 'package:http/http.dart' as http;

class SubjectService {
  Future<ResponseObject?> getAllSubjectsData() async {
    try {
      var url = Uri.parse("$BASE_URL/$GET_ALL_SUBJECTS");
      var response = await http.get(url);
      Logger().i('Subject Response body: ${response.body}');
      return ResponseObject.fromJson(response.body);
    } catch (e) {
      Logger().e(e.toString());
      return null;
    }
  }
}
