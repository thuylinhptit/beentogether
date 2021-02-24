
part of 'home.cubit.dart';


abstract class HomeState {
  const HomeState();
}

class HomeInitial extends HomeState {
  const HomeInitial();

  @override
  String get props => "";
}

class HomeChangeName2 extends HomeState {
  final String name;

  HomeChangeName2(this.name);

  @override
  String get props => name;
}
