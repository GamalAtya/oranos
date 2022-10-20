
import 'package:get_it/get_it.dart';
import 'package:oranos/features/experts/data/repositories/expert_repo_impl.dart';
import 'package:oranos/features/experts/domain/repositories/expert_repo.dart';
import 'package:oranos/features/get_started/data/repositories/chat_repository_impl.dart';
import 'package:oranos/features/get_started/domain/repositories/chat_repository.dart';
import 'package:oranos/features/get_started/domain/use_cases/get_messages_use_case.dart';
import 'package:oranos/features/get_started/domain/use_cases/send_message_use_case.dart';
import 'package:oranos/features/get_started/presentation/bloc/chat_bloc.dart';

import 'features/experts/domain/use_cases/add_to_fav_use_case.dart';
import 'features/experts/domain/use_cases/get_online_list_use_case.dart';
import 'features/experts/domain/use_cases/get_recommended_list_use_case.dart';
import 'features/experts/presentation/bloc/experts_bloc.dart';



final sl = GetIt.instance;


Future<void> init() async {
  // feature - get_started

  //bloc

  sl.registerFactory(() => ChatBloc(getMessagesUseCase: sl(), sendMessageUseCase: sl()));


  //useCases

  sl.registerLazySingleton(() => GetMessagesUseCase(sl()));
  sl.registerLazySingleton(() => SendMessageUseCase(sl()));



  //repository

  sl.registerLazySingleton<ChatRepository>(() => ChatRepositoryImpl());


  //data source



  //core



  //external



  // feature - experts

  //bloc

  sl.registerFactory(() => ExpertsBloc(addToFavouriteUseCase: sl() , getOnlineListUseCase: sl() , getRecommendedListUseCase: sl()));


  //useCases

  sl.registerLazySingleton(() => AddToFavouriteUseCase(sl()));
  sl.registerLazySingleton(() => GetOnlineListUseCase(sl()));
  sl.registerLazySingleton(() => GetRecommendedListUseCase(sl()));



  //repository

  sl.registerLazySingleton<ExpertRepository>(() => ExpertRepositoryImpl());


  //data source



  //core



  //external


}