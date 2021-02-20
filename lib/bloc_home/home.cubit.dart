import 'package:flutter_bloc/flutter_bloc.dart';
part 'home.state.dart';
class HomeCubit extends Cubit<HomeState> {
  String textDongTren;
  String textDongDuoi;
  String name1;
  String name2 ;
  int day, days, week, month, year;
  HomeCubit() : super(HomeInitial());

  void setName2(String _name) {
    name2 = _name;
    emit(HomeChangeName2(name2));
  }

  void setName1( String _name ){
    name1 = _name;
    emit(HomeChangeName1(name1));
  }

  void setTextDongTren( String _textDongTren ){
    textDongTren = _textDongTren;
    emit(HomeChangeDongTren(textDongTren));
  }

  void setTextDongDuoi( String _textDongDuoi ){
    textDongDuoi = _textDongDuoi;
    emit(HomeChangeDongDuoi(textDongDuoi));
  }


}
