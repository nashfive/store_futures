import 'package:mobx/mobx.dart';

part 'count_store.g.dart';

class CountStore = _CountStore with _$CountStore;

abstract class _CountStore with Store {
  @observable
  int state = 0;

  @observable
  ObservableFuture<int> future;

  @action
  Future<int> next() => future = ObservableFuture(
        Future.delayed(Duration(milliseconds: 500)).then((_) => state++),
      );
}
