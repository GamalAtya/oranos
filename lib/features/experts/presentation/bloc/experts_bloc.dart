import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/expert_entity.dart';
import '../../domain/use_cases/add_to_fav_use_case.dart';
import '../../domain/use_cases/get_online_list_use_case.dart';
import '../../domain/use_cases/get_recommended_list_use_case.dart';

part 'experts_event.dart';
part 'experts_state.dart';

class ExpertsBloc extends Bloc<ExpertsEvent, ExpertsState> {
  final GetOnlineListUseCase getOnlineListUseCase ;
  final AddToFavouriteUseCase addToFavouriteUseCase ;
  final GetRecommendedListUseCase getRecommendedListUseCase ;
  ExpertsBloc({required this.getRecommendedListUseCase , required this.addToFavouriteUseCase ,required this.getOnlineListUseCase}) : super(ExpertsInitial()) {
    on<ExpertsEvent>((event, emit) async{
      if(event is GetExpertsEvent){
        List<Expert> online = await getOnlineListUseCase();
        List<Expert> recommended = await getRecommendedListUseCase();
        emit(GetExperts(recommendedList: recommended, onlineList: online));
      }else if(event is AddToFavouriteEvent){
        await addToFavouriteUseCase(event.index);
        List<Expert> online = await getOnlineListUseCase();
        List<Expert> recommended = await getRecommendedListUseCase();
        emit(GetExperts(recommendedList: recommended, onlineList: online));
      }
    });
  }
}
