import 'package:mobx/mobx.dart';
part 'scroll_view_model.g.dart';

class ScrollViewModel = _ScrollViewModelBase with _$ScrollViewModel;

abstract class _ScrollViewModelBase with Store {
  
  @observable
  double scroolPosition=0;

  @action
  void changePosition(double value){
    scroolPosition=value;
  }

}
