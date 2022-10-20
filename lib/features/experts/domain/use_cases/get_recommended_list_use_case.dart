


import 'package:oranos/features/experts/domain/entities/expert_entity.dart';
import 'package:oranos/features/experts/domain/repositories/expert_repo.dart';

class GetRecommendedListUseCase{
  final ExpertRepository expertRepository ;
  GetRecommendedListUseCase(this.expertRepository);
  Future<List<Expert>> call() async {
    return expertRepository.getRecommendedList();
  }
}