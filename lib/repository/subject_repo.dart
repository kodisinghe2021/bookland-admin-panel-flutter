import 'package:bookland_admin_panel_web/model/author_model.dart';
import 'package:bookland_admin_panel_web/model/subject_model.dart';
import 'package:bookland_admin_panel_web/service/author_service.dart';
import 'package:bookland_admin_panel_web/constants/response_object.dart';
import 'package:bookland_admin_panel_web/service/subject_service.dart';
import 'package:logger/logger.dart';

class SubjectRepo {
  final SubjectService _subjectService = SubjectService();

  Future<List<SubjectModel>> getAllSubjectModels() async {
    ResponseObject? res = await _subjectService.getAllSubjectsData();
    if (res == null) {
      return [];
    }
    List<SubjectModel> modelList = [];
    for (var obj in res.data) {
      obj.forEach((key, value) {
        obj[key.toString()] = value;
      });
      modelList.add(SubjectModel.fromMap(obj));
    }
    Logger().d("SubjectModels length:${modelList.length}");
    return modelList;
  }
}
