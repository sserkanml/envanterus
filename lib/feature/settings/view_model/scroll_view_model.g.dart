// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scroll_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ScrollViewModel on _ScrollViewModelBase, Store {
  late final _$scroolPositionAtom =
      Atom(name: '_ScrollViewModelBase.scroolPosition', context: context);

  @override
  double get scroolPosition {
    _$scroolPositionAtom.reportRead();
    return super.scroolPosition;
  }

  @override
  set scroolPosition(double value) {
    _$scroolPositionAtom.reportWrite(value, super.scroolPosition, () {
      super.scroolPosition = value;
    });
  }

  late final _$_ScrollViewModelBaseActionController =
      ActionController(name: '_ScrollViewModelBase', context: context);

  @override
  void changePosition(double value) {
    final _$actionInfo = _$_ScrollViewModelBaseActionController.startAction(
        name: '_ScrollViewModelBase.changePosition');
    try {
      return super.changePosition(value);
    } finally {
      _$_ScrollViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
scroolPosition: ${scroolPosition}
    ''';
  }
}
