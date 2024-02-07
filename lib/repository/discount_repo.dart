import 'package:bookland_admin_panel_web/model/author_model.dart';
import 'package:bookland_admin_panel_web/model/discount_model.dart';
import 'package:bookland_admin_panel_web/service/author_service.dart';
import 'package:bookland_admin_panel_web/constants/response_object.dart';
import 'package:bookland_admin_panel_web/service/discount_service.dart';
import 'package:logger/logger.dart';

class DiscountRepo {
  final DiscountService _discountService = DiscountService();

  Future<List<DiscountModel>> getAllDiscountModels() async {
    ResponseObject? res = await _discountService.getAllDiscountData();
    if (res == null) {
      return [];
    }
    List<DiscountModel> modelList = [];
    for (var obj in res.data) {
      obj.forEach((key, value) {
        obj[key.toString()] = value;
      });
      modelList.add(DiscountModel.fromMap(obj));
    }
    Logger().d("DiscountModels length:${modelList.length}");
    return modelList;
  }
}
