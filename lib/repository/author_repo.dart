import 'package:bookland_admin_panel_web/model/author_model.dart';
import 'package:bookland_admin_panel_web/service/author_service.dart';
import 'package:bookland_admin_panel_web/constants/response_object.dart';
import 'package:logger/logger.dart';

class AuthorRepo {
  final AuthorService _authorService = AuthorService();
  Future<List<AuthorModel>> getAllAuthorModels() async {
    ResponseObject? res = await _authorService.getAllAuthorsData();
    if (res == null) {
      return [];
    }
    List<AuthorModel> modelList = [];
    for (var obj in res.data) {
      obj.forEach((key, value) {
        obj[key.toString()] = value;
      });
      modelList.add(AuthorModel.fromMap(obj));
    }
    Logger().d("AuthorModels length:${modelList.length}");
    return modelList;
  }
}
