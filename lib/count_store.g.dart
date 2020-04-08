// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'count_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CountStore on _CountStore, Store {
  final _$stateAtom = Atom(name: '_CountStore.state');

  @override
  int get state {
    _$stateAtom.context.enforceReadPolicy(_$stateAtom);
    _$stateAtom.reportObserved();
    return super.state;
  }

  @override
  set state(int value) {
    _$stateAtom.context.conditionallyRunInAction(() {
      super.state = value;
      _$stateAtom.reportChanged();
    }, _$stateAtom, name: '${_$stateAtom.name}_set');
  }

  final _$futureAtom = Atom(name: '_CountStore.future');

  @override
  ObservableFuture<int> get future {
    _$futureAtom.context.enforceReadPolicy(_$futureAtom);
    _$futureAtom.reportObserved();
    return super.future;
  }

  @override
  set future(ObservableFuture<int> value) {
    _$futureAtom.context.conditionallyRunInAction(() {
      super.future = value;
      _$futureAtom.reportChanged();
    }, _$futureAtom, name: '${_$futureAtom.name}_set');
  }

  final _$_CountStoreActionController = ActionController(name: '_CountStore');

  @override
  Future<int> next() {
    final _$actionInfo = _$_CountStoreActionController.startAction();
    try {
      return super.next();
    } finally {
      _$_CountStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'state: ${state.toString()},future: ${future.toString()}';
    return '{$string}';
  }
}
