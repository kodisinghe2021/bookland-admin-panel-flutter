import 'package:bookland_admin_panel_web/model/author_model.dart';
import 'package:bookland_admin_panel_web/model/publisher_model.dart';
import 'package:bookland_admin_panel_web/service/author_service.dart';
import 'package:bookland_admin_panel_web/constants/response_object.dart';
import 'package:bookland_admin_panel_web/service/publisher_service.dart';
import 'package:logger/logger.dart';

class PublisherRepo {
  final PublisherService _publisherService = PublisherService();

  Future<List<PublisherModel>> getAllPublisherModels() async {
    ResponseObject? res = await _publisherService.getAllPublishersData();
    if (res == null) {
      return [];
    }
    List<PublisherModel> modelList = [];
    for (var obj in res.data) {
      obj.forEach((key, value) {
        obj[key.toString()] = value;
      });
      modelList.add(PublisherModel.fromMap(obj));
    }
    Logger().d("PublisherModels length:${modelList.length}");
    return modelList;
  }
}
