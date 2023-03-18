// Package imports:
import 'package:equatable/equatable.dart';

class NavigationState extends Equatable {
  @override
  List<Object?> get props => [];
}

class HomeSelectedState extends NavigationState {}

class BooksSelectedState extends NavigationState {}

class ProfileSelectedState extends NavigationState {}

class SettingSelectedState extends NavigationState {}