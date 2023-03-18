import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reading_tracker_app/features/books_page/books_page.dart';
import 'package:reading_tracker_app/features/home_page/home_page.dart';
import 'package:reading_tracker_app/features/navigation_bar/bloc/navigation_bloc.dart';
import 'package:reading_tracker_app/features/navigation_bar/bloc/navigation_state.dart';
import 'package:reading_tracker_app/features/profile_page/profile_page.dart';
import 'package:reading_tracker_app/features/setting_page/setting_page.dart';

class PageRenderer extends StatelessWidget {
  const PageRenderer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    NavigationBloc navigationBloc = context.read<NavigationBloc>();

    return BlocBuilder<NavigationBloc, NavigationState>(
      builder: (context, state) {
          if(state is HomeSelectedState) {
            return const HomePage();
          }
          else if(state is BooksSelectedState) {
            return const BooksPage();
          }
          else if(state is ProfileSelectedState) {
            return const ProfilePage();
          }
          else if(state is SettingSelectedState){
            return const SettingPage();
          }
          else {
            return Container(child: Text("Empty Page"),);
          }
      },
      bloc: navigationBloc,
    );
  }
}
