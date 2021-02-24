import 'package:flutter_bloc/flutter_bloc.dart';
part 'home.state.dart';
class HomeCubit extends Cubit<HomeState> {
  String name = "hai";
  HomeCubit() : super(HomeInitial());

  void setName(String _name) {
    name = _name;
    emit(HomeChangeName2(name));
  }
}
