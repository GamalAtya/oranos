


import 'package:oranos/features/experts/domain/entities/expert_entity.dart';
import 'package:oranos/features/experts/domain/repositories/expert_repo.dart';

class AddToFavouriteUseCase{
  final ExpertRepository expertRepository ;
  AddToFavouriteUseCase(this.expertRepository);
  Future<void> call(int index) async {
    return expertRepository.addToFavourite(index);
  }
}