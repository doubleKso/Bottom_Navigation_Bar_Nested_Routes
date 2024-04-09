import 'package:bottom_nav_bar_nested/views/updates/details_updates.dart';
import 'package:bottom_nav_bar_nested/views/updates/updates.dart';
import 'package:flutter/material.dart';

class UpdatesNavigator extends StatefulWidget {
  const UpdatesNavigator({super.key});

  @override
  UpdatesNavigatorState createState() => UpdatesNavigatorState();
}

GlobalKey<NavigatorState> updatesNavigatorKey = GlobalKey<NavigatorState>();

class UpdatesNavigatorState extends State<UpdatesNavigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: updatesNavigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            if (settings.name == "/detailsUpdates") {
              return const DetailsUpdatesView();
            }
            return const UpdatesView();
          },
        );
      },
    );
  }
}
