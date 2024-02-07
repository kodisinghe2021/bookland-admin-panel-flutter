import 'package:get/get.dart';

class HomeController extends GetxController {
  RxBool isMenuFormOpen = RxBool(false);
//=========================================UNIT VALUES
  RxBool isUnitTabOpen = RxBool(false);
  RxString unitTabText = RxString("Select Unit");
  RxDouble selectedUnitValue = RxDouble(0);
//=========================================AUTHOR VALUES
  RxBool isAuthorTabOpen = RxBool(false);
  RxString authorTabText = RxString("Select Author");
  RxDouble selectedAuthorValue = RxDouble(0);
//=========================================Grade VALUES
  RxBool isGradeTabOpen = RxBool(false);
  RxString gradeTabText = RxString("Select Grade");
  RxDouble selectedGradeValue = RxDouble(0);
//=========================================Medium VALUES
  RxBool isMediumTabOpen = RxBool(false);
  RxString mediumTabText = RxString("Select Medium");
  RxDouble selectedMediumValue = RxDouble(0);
//=========================================SUBJECT VALUES
  RxBool isSubjectTabOpen = RxBool(false);
  RxString subjectTabText = RxString("Select Subject");
  RxDouble selectedSubjectValue = RxDouble(0);
//=========================================Publisher VALUES
  RxBool isPublisherTabOpen = RxBool(false);
  RxString publisherTabText = RxString("Select Publisher");
  RxDouble selectedPublisherValue = RxDouble(0);
//=========================================Discount VALUES
  RxBool isDiscountTabOpen = RxBool(false);
  RxString discountTabText = RxString("Select Discount");
  RxDouble selectedDiscountValue = RxDouble(0);
}
