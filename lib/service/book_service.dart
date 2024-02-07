import 'package:bookland_admin_panel_web/constants/response_object.dart';
import 'package:bookland_admin_panel_web/constants/urls.dart';
import 'package:logger/logger.dart';
import 'package:http/http.dart' as http;

class BookService {
  Future<ResponseObject?> getAllBooksData() async {
    try {
      var url = Uri.parse("$BASE_URL/$GET_ALL_BOOKS");
      var response = await http.get(url);
      Logger().i('Response status: ${response.statusCode}');
      Logger().i('Response body: ${response.body}');

      return ResponseObject.fromJson(response.body);
    } catch (e) {
      Logger().e(e.toString());
      return null;
    }
  }
}
