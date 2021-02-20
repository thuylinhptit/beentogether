
part of 'home.cubit.dart';


abstract class HomeState {
  const HomeState();
}

class HomeInitial extends HomeState {
  const HomeInitial();

  @override
  String get props => "";
}

class HomeChangeDongTren extends HomeState{
  final String textDongTren;

  HomeChangeDongTren(this.textDongTren);

  String get props => textDongTren;
}

class HomeChangeDongDuoi extends HomeState{
  final String textDongDuoi;

  HomeChangeDongDuoi(this.textDongDuoi);

}

class HomeChangeName1 extends HomeState{
  final String name1;

  HomeChangeName1(this.name1);
}

class HomeChangeName2 extends HomeState {
  final String name2;

  HomeChangeName2(this.name2);

  String get props => name2;
}

class HomeChangeTime extends HomeState{
  final DateTime time;
  int day;
  int days;
  int month;
  int week, year;

  HomeChangeTime(this.time);

}