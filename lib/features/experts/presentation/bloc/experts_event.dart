part of 'experts_bloc.dart';

abstract class ExpertsEvent {
  const ExpertsEvent();
}


class GetExpertsEvent extends ExpertsEvent {

}

class AddToFavouriteEvent extends ExpertsEvent {
  final int index ;
  const AddToFavouriteEvent({required this.index});
}
