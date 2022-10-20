

import 'package:oranos/features/experts/domain/entities/expert_entity.dart';

abstract class ExpertRepository {

  Future<List<Expert>> getRecommendedList();

  Future<List<Expert>> getOnlineList();

  Future<void> addToFavourite(int index);

}