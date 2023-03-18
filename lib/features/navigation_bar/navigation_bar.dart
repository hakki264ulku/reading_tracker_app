import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reading_tracker_app/features/navigation_bar/bloc/navigation_bloc.dart';
import 'package:reading_tracker_app/features/navigation_bar/bloc/navigation_event.dart';
import 'package:reading_tracker_app/features/navigation_bar/bloc/navigation_state.dart';
import 'package:reading_tracker_app/features/navigation_bar/navigation_icon.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  State<NavigationBar> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    NavigationBloc navigationBloc = context.read<NavigationBloc>();

    onSelect(NavigationItem item) {
      navigationBloc.add(NavigatedEvent(item));
    }

    return BlocBuilder<NavigationBloc, NavigationState>(
      bloc: navigationBloc,
      builder: (context, state) {
        return Container(
          height: 70,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              gradient: LinearGradient(colors: [Color(0xFFA58C7A), Color(0xFF846046)], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 48),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                NavigationIcon(
                  onPressMethod: (){onSelect(NavigationItem.HOME);},
                  iconPath: 'assets/icons/home.svg',
                  iconText: "Home",
                  selected: state is HomeSelectedState,
                ),
                NavigationIcon(
                  onPressMethod: (){onSelect(NavigationItem.BOOKS);},
                  iconPath: 'assets/icons/books.svg',
                  iconText: "Books",
                  selected: state is BooksSelectedState,
                ),
                NavigationIcon(
                  onPressMethod: (){onSelect(NavigationItem.PROFILE);},
                  iconPath: 'assets/icons/profile.svg',
                  iconText: "Profile",
                  selected: state is ProfileSelectedState,
                ),
                NavigationIcon(
                  onPressMethod: (){onSelect(NavigationItem.SETTING);},
                  iconPath: 'assets/icons/setting.svg',
                  iconText: "Setting",
                  selected: state is SettingSelectedState,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
