

import 'package:oranos/core/assets_manager.dart';
import 'package:oranos/features/experts/domain/entities/expert_entity.dart';
import 'package:oranos/features/experts/domain/repositories/expert_repo.dart';

class ExpertRepositoryImpl implements ExpertRepository {

  List<Expert> recommendedList = [
    Expert(name: "Kareem Adel", category: "Supply Chain", image: ImageAssets.kareem, rate: 5.0, favourite: false),
    Expert(name: "Merna Adel", category: "Supply Chain", image: ImageAssets.merna, rate: 4.9, favourite: false),
  ];

  List<Expert> onlineList = [
    Expert(name: "Kareem Adel", category: "Supply Chain", image: ImageAssets.kareem, rate: 5.0, favourite: false),
    Expert(name: "Merna Adel", category: "Supply Chain", image: ImageAssets.kareem, rate: 4.9, favourite: false),
    Expert(name: "Merna Adel", category: "Supply Chain", image: ImageAssets.kareem, rate: 4.9, favourite: false),
    Expert(name: "Merna Adel", category: "Supply Chain", image: ImageAssets.kareem, rate: 4.9, favourite: false),
  ];

  @override
  Future<void> addToFavourite(int index) async{
    Expert expert = recommendedList[index];
    Expert newExpert = Expert(name: expert.name, category: expert.category, image: expert.image, rate: expert.rate, favourite: !expert.favourite);
    // recommendedList.replaceRange(index, index, [newExpert]);
    recommendedList.removeAt(index);
    recommendedList.insert(index, newExpert);
  }

  @override
  Future<List<Expert>> getOnlineList() {
    return Future.value(onlineList);
  }

  @override
  Future<List<Expert>> getRecommendedList() {
    return Future.value(recommendedList);
  }

}