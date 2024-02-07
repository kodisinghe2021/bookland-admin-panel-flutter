import 'package:bookland_admin_panel_web/model/medium_model.dart';
import 'package:bookland_admin_panel_web/service/medium_service.dart';
import 'package:bookland_admin_panel_web/constants/response_object.dart';
import 'package:logger/logger.dart';

class MediumRepo {
  final MediumService _mediumService = MediumService();

  Future<List<MediumsModel>> getAllMediumModels() async {
    ResponseObject? res = await _mediumService.getAllMediumsData();
    if (res == null) {
      return [];
    }
    List<MediumsModel> modelList = [];
    for (var obj in res.data) {
      obj.forEach((key, value) {
        obj[key.toString()] = value;
      });
      modelList.add(MediumsModel.fromMap(obj));
    }
    Logger().d("MediumModels length:${modelList.length}");
    return modelList;
  }
}
