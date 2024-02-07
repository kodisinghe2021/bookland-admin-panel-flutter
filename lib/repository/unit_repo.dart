import 'package:bookland_admin_panel_web/model/unit_model.dart';
import 'package:bookland_admin_panel_web/constants/response_object.dart';
import 'package:bookland_admin_panel_web/service/unit_service.dart';
import 'package:logger/logger.dart';

class UnitRepo {
  final UnitService _unitService = UnitService();

  Future<List<UnitModel>> getAllUnitModels() async {
    ResponseObject? res = await _unitService.getAllUnitsData();
    if (res == null) {
      return [];
    }
    List<UnitModel> modelList = [];
    for (var obj in res.data) {
      obj.forEach((key, value) {
        obj[key.toString()] = value;
      });
      modelList.add(UnitModel.fromMap(obj));
    }
    Logger().d("UnitModels length:${modelList.length}");
    return modelList;
  }
}
