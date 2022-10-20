

import 'package:equatable/equatable.dart';

class Expert extends Equatable {

  final String name ;
  final String category ;
  final String image ;
  final double rate ;
  final bool favourite ;
  const Expert({required this.name , required this.category ,required this.image, required this.rate ,required this.favourite});

  @override
  List<Object?> get props => [name , category , image , rate , favourite];

}