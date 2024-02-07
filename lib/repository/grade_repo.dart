import 'package:bookland_admin_panel_web/model/grade_model.dart';
import 'package:bookland_admin_panel_web/service/grade_service.dart';
import 'package:bookland_admin_panel_web/constants/response_object.dart';
import 'package:logger/logger.dart';

class GradeRepo {
  final GradeService _gradeService = GradeService();

  Future<List<GradeModel>> getAllGradeModels() async {
    ResponseObject? res = await _gradeService.getAllGradesData();
    if (res == null) {
      return [];
    }
    List<GradeModel> modelList = [];
    for (var obj in res.data) {
      obj.forEach((key, value) {
        obj[key.toString()] = value;
      });
      modelList.add(GradeModel.fromMap(obj));
    }
    Logger().d("GradeModels length:${modelList.length}");
    return modelList;
  }
}
