// Package imports:
import 'package:equatable/equatable.dart';

enum NavigationItem {HOME, BOOKS, PROFILE, SETTING}

class NavigationEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class NavigationInitialEvent extends NavigationEvent {
  NavigationInitialEvent();
}

class NavigatedEvent extends NavigationEvent {
  final NavigationItem selectedItem;

  NavigatedEvent(this.selectedItem);

  @override
  List<Object?> get props => [selectedItem];
}
