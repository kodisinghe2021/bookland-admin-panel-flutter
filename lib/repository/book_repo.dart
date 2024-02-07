import 'package:bookland_admin_panel_web/model/book_full_model.dart';
import 'package:bookland_admin_panel_web/constants/response_object.dart';
import 'package:bookland_admin_panel_web/service/book_service.dart';

class BookRepo {
  final BookService _bookService = BookService();

  Future<List<BookFullModel>> getAllBookModels() async {
    ResponseObject? res = await _bookService.getAllBooksData();
    if (res == null) {
      return [];
    }
    List<BookFullModel> modelList = [];
    for (var obj in res.data) {
      obj.forEach((key, value) {
        obj[key.toString()] = value;
      });
      modelList.add(BookFullModel.fromMap(obj));
    }
    return modelList;
  }
}
