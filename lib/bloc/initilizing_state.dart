part of 'initilizing_bloc.dart';

class InitilizingState {}

class InitilizingInitial extends InitilizingState {}

class InitilizingDataRetrievingSuccess extends InitilizingState {
  InitilizingDataRetrievingSuccess({
    required this.uniModelList,
    required this.authorModelList,
    required this.gradeModelList,
    required this.mediumModelList,
    required this.discountModelList,
    required this.publisherModelList,
    required this.subjectModelList,
  });
  List<UnitModel> uniModelList;
  List<AuthorModel> authorModelList;
  List<GradeModel> gradeModelList;
  List<MediumsModel> mediumModelList;
  List<PublisherModel> publisherModelList;
  List<SubjectModel> subjectModelList;
  List<DiscountModel> discountModelList;
}

class InitilizingDataRetrievingFailed extends InitilizingState {}

class InitilizingDataRetrievingLoading extends InitilizingState {}
