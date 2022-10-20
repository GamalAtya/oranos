part of 'experts_bloc.dart';

@immutable
abstract class ExpertsState {}

class ExpertsInitial extends ExpertsState {}


class GetExperts extends ExpertsState {
  final List<Expert> recommendedList ;
  final List<Expert> onlineList ;

  GetExperts({required this.recommendedList,required this.onlineList});
}
