import 'package:bookland_admin_panel_web/bloc/initilizing_bloc.dart';
import 'package:bookland_admin_panel_web/constants/constant.dart';
import 'package:bookland_admin_panel_web/controller/home_controller.dart';
import 'package:bookland_admin_panel_web/model/author_model.dart';
import 'package:bookland_admin_panel_web/model/discount_model.dart';
import 'package:bookland_admin_panel_web/model/grade_model.dart';
import 'package:bookland_admin_panel_web/model/medium_model.dart';
import 'package:bookland_admin_panel_web/model/publisher_model.dart';
import 'package:bookland_admin_panel_web/model/subject_model.dart';
import 'package:bookland_admin_panel_web/model/unit_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

import '../widgets/input_field.dart';
import '../widgets/select_menu_field.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final HomeController _homeController =
      Get.put<HomeController>(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        width: w(context),
        height: h(context),
        child: Row(
          children: [
            Expanded(
              child: BlocConsumer<InitilizingBloc, InitilizingState>(
                  listener: (context, state) {},
                  builder: (context, state) {
                    return state is InitilizingDataRetrievingSuccess
                        ? Stack(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 20, 10, 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Spacer(),
                                    const Text(
                                      "Add Book",
                                      style: TextStyle(fontSize: 22),
                                    ),
                                    const SizedBox(height: 20),
                                    InputField(
                                      onTap: () {},
                                      fieldName: "Book Name",
                                      hintText: "Enter Book Name Here",
                                      suffixIcon: Icons.book_outlined,
                                    ),
                                    const SizedBox(height: 10),
                                    InputField(
                                      onTap: () {},
                                      fieldName: "Available Quantity",
                                      hintText: "Enter Quantity here",
                                      suffixIcon: Icons.stacked_bar_chart,
                                    ),
                                    selectUnit(context, state.uniModelList),
                                    InputField(
                                      onTap: () {},
                                      fieldName: "Buying Price",
                                      hintText: "Enter Buying price here",
                                      suffixIcon: Icons.currency_yen_rounded,
                                    ),
                                    const SizedBox(height: 10),
                                    InputField(
                                      onTap: () {},
                                      fieldName: "Selling Price",
                                      hintText: "Enter Selling price here",
                                      suffixIcon: Icons.currency_yen_rounded,
                                    ),
                                    selectAuthor(
                                      context,
                                      state.authorModelList,
                                    ),
                                    const SizedBox(height: 10),
                                    selectGrade(
                                      context,
                                      state.gradeModelList,
                                    ),
                                    const SizedBox(height: 10),
                                    selectMedium(
                                      context,
                                      state.mediumModelList,
                                    ),
                                    const SizedBox(height: 10),
                                    selectPublisher(
                                      context,
                                      state.publisherModelList,
                                    ),
                                    const SizedBox(height: 10),
                                    selectSubject(
                                      context,
                                      state.subjectModelList,
                                    ),
                                    const SizedBox(height: 10),
                                    selectDiscount(
                                      context,
                                      state.discountModelList,
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                              ),
                            ],
                          )
                        : CupertinoActivityIndicator();
                  }),
            ),
            Expanded(
              child: Container(
                color: Colors.brown,
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget selectUnit(BuildContext context, List<UnitModel> uniModelList) => Obx(
        () => SizedBox(
          width: w(context) * .3,
          child: DropdownButtonHideUnderline(
              child: DropdownButton2<double>(
                  isExpanded: true,
                  hint: Text(
                    'Select Unit',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                  items: uniModelList
                      .map((e) => DropdownMenuItem<double>(
                          value: e.unitId, child: Text(e.unitName)))
                      .toList(),
                  value: _homeController.selectedUnitValue.value == 0
                      ? null
                      : _homeController.selectedUnitValue.value,
                  onChanged: (double? value) {
                    Logger().i("Selected value : $value");
                    _homeController.selectedUnitValue.value = value!.toDouble();
                  })),
        ),
      );

  Widget selectAuthor(BuildContext context, List<AuthorModel> uniModelList) =>
      Obx(
        () => SizedBox(
          width: w(context) * .3,
          child: DropdownButtonHideUnderline(
              child: DropdownButton2<double>(
                  isExpanded: true,
                  hint: Text(
                    'Select Author',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                  items: uniModelList
                      .map((e) => DropdownMenuItem<double>(
                          value: e.authorId,
                          child: Text(e.authorName.replaceAll("_", " "))))
                      .toList(),
                  value: _homeController.selectedAuthorValue.value == 0
                      ? null
                      : _homeController.selectedAuthorValue.value,
                  onChanged: (double? value) {
                    Logger().i("Selected value : $value");
                    _homeController.selectedAuthorValue.value =
                        value!.toDouble();
                  })),
        ),
      );

  Widget selectGrade(BuildContext context, List<GradeModel> gradeModelList) =>
      Obx(
        () => SizedBox(
          width: w(context) * .3,
          child: DropdownButtonHideUnderline(
              child: DropdownButton2<double>(
                  isExpanded: true,
                  hint: Text(
                    'Select Grade',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                  items: gradeModelList
                      .map((e) => DropdownMenuItem<double>(
                          value: e.gradeId,
                          child: Text(e.gradeName.replaceAll("_", " "))))
                      .toList(),
                  value: _homeController.selectedAuthorValue.value == 0
                      ? null
                      : _homeController.selectedAuthorValue.value,
                  onChanged: (double? value) {
                    Logger().i("Selected value : $value");
                    _homeController.selectedAuthorValue.value =
                        value!.toDouble();
                  })),
        ),
      );

  Widget selectMedium(
          BuildContext context, List<MediumsModel> mediumModelList) =>
      Obx(
        () => SizedBox(
          width: w(context) * .3,
          child: DropdownButtonHideUnderline(
              child: DropdownButton2<double>(
                  isExpanded: true,
                  hint: Text(
                    'Select Medium',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                  items: mediumModelList
                      .map((e) => DropdownMenuItem<double>(
                          value: e.mediumId,
                          child: Text(e.mediumType.replaceAll("_", " "))))
                      .toList(),
                  value: _homeController.selectedAuthorValue.value == 0
                      ? null
                      : _homeController.selectedAuthorValue.value,
                  onChanged: (double? value) {
                    Logger().i("Selected value : $value");
                    _homeController.selectedAuthorValue.value =
                        value!.toDouble();
                  })),
        ),
      );
  Widget selectPublisher(
          BuildContext context, List<PublisherModel> publisherModelList) =>
      Obx(
        () => SizedBox(
          width: w(context) * .3,
          child: DropdownButtonHideUnderline(
              child: DropdownButton2<double>(
                  isExpanded: true,
                  hint: Text(
                    'Select Publisher',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                  items: publisherModelList
                      .map((e) => DropdownMenuItem<double>(
                          value: e.publisherID,
                          child: Text(e.publisherName.replaceAll("_", " "))))
                      .toList(),
                  value: _homeController.selectedAuthorValue.value == 0
                      ? null
                      : _homeController.selectedAuthorValue.value,
                  onChanged: (double? value) {
                    Logger().i("Selected value : $value");
                    _homeController.selectedAuthorValue.value =
                        value!.toDouble();
                  })),
        ),
      );
  Widget selectSubject(
          BuildContext context, List<SubjectModel> subjectModelList) =>
      Obx(
        () => SizedBox(
          width: w(context) * .3,
          child: DropdownButtonHideUnderline(
              child: DropdownButton2<double>(
                  isExpanded: true,
                  hint: Text(
                    'Select Subject',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                  items: subjectModelList
                      .map((e) => DropdownMenuItem<double>(
                          value: e.subjectId,
                          child: Text(e.subjectName.replaceAll("_", " "))))
                      .toList(),
                  value: _homeController.selectedAuthorValue.value == 0
                      ? null
                      : _homeController.selectedAuthorValue.value,
                  onChanged: (double? value) {
                    Logger().i("Selected value : $value");
                    _homeController.selectedAuthorValue.value =
                        value!.toDouble();
                  })),
        ),
      );
  Widget selectDiscount(
          BuildContext context, List<DiscountModel> discountModelList) =>
      Obx(
        () => SizedBox(
          width: w(context) * .3,
          child: DropdownButtonHideUnderline(
              child: DropdownButton2<double>(
                  isExpanded: true,
                  hint: Text(
                    'Select Discount',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                    ),
                  ),
                  items: discountModelList
                      .map((e) => DropdownMenuItem<double>(
                          value: e.discountId,
                          child: Text("${e.discountPercentage.toString()} %")))
                      .toList(),
                  value: _homeController.selectedAuthorValue.value == 0
                      ? null
                      : _homeController.selectedAuthorValue.value,
                  onChanged: (double? value) {
                    Logger().i("Selected value : $value");
                    _homeController.selectedAuthorValue.value =
                        value!.toDouble();
                  })),
        ),
      );
}
