import 'package:bloc/bloc.dart';
import 'package:bookland_admin_panel_web/model/author_model.dart';
import 'package:bookland_admin_panel_web/model/discount_model.dart';
import 'package:bookland_admin_panel_web/model/grade_model.dart';
import 'package:bookland_admin_panel_web/model/medium_model.dart';
import 'package:bookland_admin_panel_web/model/publisher_model.dart';
import 'package:bookland_admin_panel_web/model/subject_model.dart';
import 'package:bookland_admin_panel_web/model/unit_model.dart';
import 'package:bookland_admin_panel_web/repository/author_repo.dart';
import 'package:bookland_admin_panel_web/repository/discount_repo.dart';
import 'package:bookland_admin_panel_web/repository/grade_repo.dart';
import 'package:bookland_admin_panel_web/repository/medium_repo.dart';
import 'package:bookland_admin_panel_web/repository/publisher_repo.dart';
import 'package:bookland_admin_panel_web/repository/subject_repo.dart';
import 'package:bookland_admin_panel_web/repository/unit_repo.dart';
import 'package:logger/logger.dart';

part 'initilizing_event.dart';
part 'initilizing_state.dart';

class InitilizingBloc extends Bloc<InitilizingEvent, InitilizingState> {
  InitilizingBloc() : super(InitilizingInitial()) {
    on<InitilizingEvent>((event, emit) async {
      if (event is StartRetrieveAllInitData) {
        emit(InitilizingDataRetrievingLoading());
        List<UnitModel> unitModelList = await UnitRepo().getAllUnitModels();
        List<AuthorModel> authorModels =
            await AuthorRepo().getAllAuthorModels();
        List<GradeModel> gradeModelList = await GradeRepo().getAllGradeModels();
        List<MediumsModel> mediumModelList =
            await MediumRepo().getAllMediumModels();
        List<PublisherModel> publisherModelList =
            await PublisherRepo().getAllPublisherModels();
        List<SubjectModel> subjectModelList =
            await SubjectRepo().getAllSubjectModels();
        List<DiscountModel> discountModelList =
            await DiscountRepo().getAllDiscountModels();
        if (unitModelList.isEmpty) {
          return emit(InitilizingDataRetrievingFailed());
        }
        emit(
          InitilizingDataRetrievingSuccess(
            uniModelList: unitModelList,
            authorModelList: authorModels,
            gradeModelList: gradeModelList,
            mediumModelList: mediumModelList,
            publisherModelList: publisherModelList,
            discountModelList: discountModelList,
            subjectModelList: subjectModelList,
          ),
        );
      }
    });
  }
}
